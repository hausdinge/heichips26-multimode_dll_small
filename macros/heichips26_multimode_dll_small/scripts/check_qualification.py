#!/usr/bin/env python3
"""Check coverage and freshness of the physical, digital and transistor reports."""
import json
from pathlib import Path
import re
import subprocess
import sys
from build_paths import ROOT, run_dir
from run_spice import digest
from manage_outputs import inputs, verification_sources

run = run_dir()
checks = {}
failures = []
source_hashes = verification_sources()


def read_check(relative):
    path = run / relative
    data = json.loads(path.read_text())
    if not data.get('passed'):
        raise ValueError('Check did not pass: ' + relative)
    checks[relative] = digest(path)
    return data


try:
    if json.loads((run / 'implementation_inputs.json').read_text()) != inputs():
        raise ValueError('Physical implementation inputs changed')
    for name in ('physical_summary', 'layout', 'structure/summary', 'reset_electrical/summary'):
        read_check('verification/' + name + '.json')
    physical = json.loads((run / 'verification/physical_summary.json').read_text())
    layout = json.loads((run / 'verification/layout.json').read_text())
    if physical['metrics_sha256'] != digest(run / 'views/metrics.json'):
        raise ValueError('Stale physical metrics')
    if layout['odb_sha256'] != digest(run / 'views/odb/heichips26_multimode_dll_small.odb'):
        raise ValueError('Stale layout check')
    audit = json.loads((run / 'verification/reset_electrical/summary.json').read_text())
    for name, expected in audit['input_sha256'].items():
        if digest(Path(name)) != expected:
            raise ValueError('Reset electrical audit is stale: ' + name)
    for mode in ('divider', 'rtl', 'gl'):
        data = read_check(f'simulation/verilog/{mode}/summary.json')
        if data.get('status') != 'complete':
            raise ValueError('Incomplete digital suite: ' + mode)
        for name, expected in data['inputs_sha256'].items():
            path = Path(name) if Path(name).is_absolute() else ROOT / name
            if digest(path) != expected:
                raise ValueError('Digital input changed: ' + name)
    scopes = ['schematic', 'routed', 'routed_fine']
    finer_summary = run / 'simulation/ngspice/routed_finer/summary.json'
    if finer_summary.is_file():
        scopes.append('routed_finer')
    for scope in scopes:
        data = read_check(f'simulation/ngspice/{scope}/summary.json')
        found = {(r['corner']['name'], r['level']) for r in data['results']}
        required = {(corner, code) for corner in ('tt', 'ss', 'ff') for code in (0, 39)}
        if scope == 'routed_finer':
            required = {('tt', 39)}
        if scope == 'routed':
            required |= {('tt', code) for code in range(40)}
        if not required <= found:
            raise ValueError('Missing transistor cases: ' + scope)
        for sample in data['results']:
            case = run / f'simulation/ngspice/{scope}' / sample['case']
            for name, expected in sample['input_sha256'].items():
                path = Path(name) if Path(name).is_absolute() else case / name
                if digest(path) != expected:
                    raise ValueError('Transistor input changed: ' + str(path))
        startup = read_check(f'verification/spice_results/{scope}.json')
        if startup['checker_sha256'] != digest(ROOT / 'scripts/check_spice_results.py'):
            raise ValueError('Startup checker changed: ' + scope)
        if startup['summary_sha256'] != digest(run / f'simulation/ngspice/{scope}/summary.json'):
            raise ValueError('Stale startup checks: ' + scope)
        for sample in startup['results']:
            path = run / f'simulation/ngspice/{scope}' / sample['case'] / 'waveform.dat'
            if digest(path) != sample['waveform_sha256']:
                raise ValueError('Transient changed: ' + str(path))
    convergence = read_check('verification/spice_results/convergence.json')
    if convergence['checker_sha256'] != digest(ROOT / 'scripts/check_spice_convergence.py'):
        raise ValueError('Convergence checker changed')
    if finer_summary.is_file() and convergence.get('finer_sha256') != digest(finer_summary):
        raise ValueError('Stale optional quarter-step comparison')
    for key, scope in [('coarse_sha256', 'routed'), ('fine_sha256', 'routed_fine')]:
        if convergence[key] != digest(run / f'simulation/ngspice/{scope}/summary.json'):
            raise ValueError('Stale time-step convergence')
    transitions = read_check('simulation/ngspice/routed_transitions/summary.json')
    cfg = json.loads((ROOT / 'testbenches/ngspice/oscillator.json').read_text())
    expected = {(code, interval) for code in cfg['transition_pairs'] for interval in cfg['update_periods_ns']}
    if {(r['level'], r['update_period_ns']) for r in transitions['results']} != expected:
        raise ValueError('Incomplete live-trim coverage')
    if transitions.get('status') != 'complete' or not all(r.get('passed') for r in transitions['results']):
        raise ValueError('Incomplete or failed live-trim results')
    for sample in transitions['results']:
        case = run / 'simulation/ngspice/routed_transitions' / sample['case']
        for name, expected_hash in sample['input_sha256'].items():
            path = Path(name) if Path(name).is_absolute() else case / name
            if digest(path) != expected_hash:
                raise ValueError('Live-trim input changed: ' + str(path))
        if not sample.get('waveform_sha256') or digest(case / 'waveform.dat') != sample['waveform_sha256']:
            raise ValueError('Missing or stale live-trim waveform hash: ' + sample['case'])
    model = ROOT / 'testbenches/verilog/frequency_table.vh'
    expected = digest(run / 'simulation/ngspice/routed/summary.json')
    if f'Source summary SHA256: {expected}' not in model.read_text():
        raise ValueError('Functional frequency model does not match routed SPICE')
    log = run / 'verification/helper_tests.log'
    with log.open('w') as handle:
        subprocess.run([sys.executable, '-B', '-m', 'unittest', 'discover', '-s',
                        str(ROOT / 'testbenches/python'), '-v'], stdout=handle,
                       stderr=subprocess.STDOUT, check=True)
    checks['verification/helper_tests.log'] = digest(log)
    if verification_sources() != source_hashes:
        raise ValueError('Verification sources changed while checking')
except Exception as exc:
    failures.append(str(exc))

out = run / 'verification/qualification.json'
out.parent.mkdir(parents=True, exist_ok=True)
out.write_text(json.dumps({'passed': not failures, 'run_tag': run.name, 'failures': failures,
                           'checked_reports_sha256': checks, 'source_sha256': source_hashes,
                           'scope': 'Physical signoff metrics, RTL/all-cell SDF, oscillator PVT endpoints, full nominal trim sweep and directed live trim'}, indent=2) + '\n')
print('Qualification:', 'PASS' if not failures else failures)
raise SystemExit(0 if not failures else 1)
