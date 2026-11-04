#!/usr/bin/env python3
"""Check external-reset startup and the routed oscillator's digital timing envelope."""
import argparse
import json
import re
from pathlib import Path
from build_paths import run_dir
from run_spice import digest, edges, waveform

parser = argparse.ArgumentParser()
parser.add_argument('--scope', choices=['schematic', 'routed', 'routed_fine', 'routed_finer'], required=True)
args = parser.parse_args()
root = run_dir() / 'simulation/ngspice' / args.scope
summary = json.loads((root / 'summary.json').read_text())
if not summary.get('passed') or summary.get('status') != 'complete':
    raise ValueError('A completed, passing static sweep is required')
config = json.loads((root / 'config.json').read_text())
results = []
failures = []
for case in summary['results']:
    path = root / case['case'] / 'waveform.dat'
    log = (path.parent / 'ngspice.log').read_text()
    if re.search(r'Error|Timestep too small|simulation\(s\) aborted', log, re.I):
        raise ValueError('Simulator reported an abort: ' + case['case'])
    step = min(config['max_step_ps'], config.get('corner_max_step_ps', {}).get(case['corner']['name'], config['max_step_ps']))
    analysis = re.search(r'^\.?tran\s+([0-9.]+)p\s+([0-9.]+)n', (path.parent / 'test.sp').read_text(), re.M)
    if not analysis or float(analysis[1]) != step or float(analysis[2]) != case['stop_ns']:
        raise ValueError('Transient deck differs from recorded settings: ' + case['case'])
    time, voltage = waveform(path, case['stop_ns'], step)
    supply = case['corner']['voltage']
    quiet = voltage[(time >= config['supply_ramp_ns'] + 2) & (time <= config['reset_ns'] - 0.5)]
    rises = edges(time, voltage, supply / 2)
    starts = rises[rises >= config['reset_ns']]
    held = bool(len(quiet) and max(abs(quiet)) < supply * 0.1)
    started = bool(len(starts) and starts[0] < case['measurement_start_ns'])
    # The synthesized controller/dividers are constrained for a 400 MHz source.
    within_envelope = not args.scope.startswith('routed') or 1000 / case['minimum_period_ns'] <= 400
    passed = held and started and within_envelope
    result = {'case': case['case'], 'passed': passed, 'reset_held_output_low': held,
              'started_before_measurement': started, 'within_digital_envelope': within_envelope,
              'first_rising_edge_ns': float(starts[0]) if len(starts) else None,
              'reset_window_peak_v': float(max(abs(quiet))) if len(quiet) else None,
              'waveform_sha256': digest(path)}
    results.append(result)
    if not passed:
        failures.append(result)
out = run_dir() / 'verification/spice_results' / (args.scope + '.json')
out.parent.mkdir(parents=True, exist_ok=True)
out.write_text(json.dumps({'passed': not failures, 'scope': args.scope,
                           'summary_sha256': digest(root / 'summary.json'),
                           'checker_sha256': digest(Path(__file__)),
                           'results': results, 'failures': failures}, indent=2) + '\n')
print(args.scope, len(results), 'startup/envelope checks:', 'PASS' if not failures else failures)
raise SystemExit(0 if not failures else 1)
