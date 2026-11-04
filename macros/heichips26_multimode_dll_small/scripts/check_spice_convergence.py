#!/usr/bin/env python3
"""Compare all PVT endpoints at the nominal and halved transient time step."""
import json
from pathlib import Path
from build_paths import run_dir
from run_spice import digest

# One percent is the frequency-model characterization budget; the physical
# 400 MHz timing envelope and 200 MHz nominal target retain larger margins.
FREQUENCY_LIMIT_PCT = 1.0

root = run_dir() / 'simulation/ngspice'
coarse_path = root / 'routed/summary.json'
fine_path = root / 'routed_fine/summary.json'
coarse = json.loads(coarse_path.read_text())
fine = json.loads(fine_path.read_text())
if not coarse.get('passed') or not fine.get('passed'):
    raise ValueError('Both routed sweeps must pass')
if coarse['netlist_manifest_sha256'] != fine['netlist_manifest_sha256']:
    raise ValueError('Convergence sweeps used different circuits')
coarse_config = json.loads((coarse_path.parent / 'config.json').read_text())
fine_config = json.loads((fine_path.parent / 'config.json').read_text())
step = coarse_config['max_step_ps']
fine_step = fine_config['max_step_ps']
if step != 2 * fine_step:
    raise ValueError('Fine step must be half the nominal step')
reference = {r['case']: r for r in coarse['results']}
expected = {f'{corner}_trim{code:02d}' for corner in ('tt', 'ss', 'ff') for code in (0, 39)}
if {r['case'] for r in fine['results']} != expected:
    raise ValueError('Fine sweep must contain all six PVT endpoints')
results = []
for sample in fine['results']:
    other = reference[sample['case']]
    corner = sample['corner']['name']
    local_step = min(step, coarse_config.get('corner_max_step_ps', {}).get(corner, step))
    local_fine = min(fine_step, fine_config.get('corner_max_step_ps', {}).get(corner, fine_step))
    if local_step != 2 * local_fine:
        raise ValueError('Each corner must halve its actual step')
    frequency_error = abs(other['frequency_mhz'] / sample['frequency_mhz'] - 1) * 100
    duty_error = abs(other['duty_pct'] - sample['duty_pct'])
    pulse_error = abs(other['minimum_pulse_ns'] / sample['minimum_pulse_ns'] - 1) * 100
    results.append({'case': sample['case'], 'step_ps': local_step, 'fine_step_ps': local_fine, 'frequency_difference_pct': frequency_error,
                    'duty_difference_percentage_points': duty_error,
                    'minimum_pulse_difference_pct': pulse_error,
                    'passed': frequency_error <= FREQUENCY_LIMIT_PCT and duty_error <= 0.2 and pulse_error <= 1.0})
passed = all(r['passed'] for r in results)
finer_path = root / 'routed_finer/summary.json'
finer_results = []
if finer_path.is_file():
    finer = json.loads(finer_path.read_text())
    if not finer.get('passed') or finer['netlist_manifest_sha256'] != fine['netlist_manifest_sha256']:
        raise ValueError('The optional quarter-step sweep must pass on the same circuit')
    finer_config = json.loads((finer_path.parent / 'config.json').read_text())
    finer_step = finer_config['max_step_ps']
    if fine_step != 2 * finer_step:
        raise ValueError('Quarter-step diagnostic must halve the fine step')
    fine_reference = {r['case']: r for r in fine['results']}
    for sample in finer['results']:
        other = fine_reference[sample['case']]
        corner = sample['corner']['name']
        local_fine = min(fine_step, fine_config.get('corner_max_step_ps', {}).get(corner, fine_step))
        local_finer = min(finer_step, finer_config.get('corner_max_step_ps', {}).get(corner, finer_step))
        if local_fine != 2 * local_finer:
            raise ValueError('Quarter-step diagnostic must halve the actual corner step')
        frequency_error = abs(other['frequency_mhz'] / sample['frequency_mhz'] - 1) * 100
        duty_error = abs(other['duty_pct'] - sample['duty_pct'])
        pulse_error = abs(other['minimum_pulse_ns'] / sample['minimum_pulse_ns'] - 1) * 100
        finer_results.append({'case': sample['case'], 'frequency_difference_pct': frequency_error,
                              'duty_difference_percentage_points': duty_error,
                              'minimum_pulse_difference_pct': pulse_error,
                              'passed': frequency_error <= 0.2 and duty_error <= 0.2 and pulse_error <= 1.0})
    passed = passed and bool(finer_results) and all(r['passed'] for r in finer_results)
out = run_dir() / 'verification/spice_results/convergence.json'
out.parent.mkdir(parents=True, exist_ok=True)
out.write_text(json.dumps({'passed': passed, 'step_ps': step, 'fine_step_ps': fine_step,
                           'checker_sha256': digest(Path(__file__)),
                           'limits': {'frequency_difference_pct': FREQUENCY_LIMIT_PCT,
                                      'duty_difference_percentage_points': 0.2,
                                      'minimum_pulse_difference_pct': 1.0},
                           'coarse_sha256': digest(coarse_path), 'fine_sha256': digest(fine_path),
                           'finer_sha256': digest(finer_path) if finer_path.is_file() else None,
                           'finer_frequency_limit_pct': 0.2, 'finer_results': finer_results,
                           'results': results}, indent=2) + '\n')
print('SPICE time-step convergence:', 'PASS' if passed else 'FAIL')
print(json.dumps(results, indent=2))
raise SystemExit(0 if passed else 1)
