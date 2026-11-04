#!/usr/bin/env python3
"""Run all suites, calibrating RTL from routed SPICE and retaining every failure."""
import json
import os
from pathlib import Path
import subprocess
from build_paths import run_dir

steps = ['test-measurements', 'sim-spice-ring',
         'sim-spice-routed', 'sim-spice-fine', 'update-frequency-model',
         'sim-divider-verilog', 'sim-rtl-verilog',
         'sim-gl-verilog', 'sim-spice-transitions']
out = run_dir() / 'verification/regression'
out.mkdir(parents=True, exist_ok=True)
summary = out / 'summary.json'
summary.write_text(json.dumps({'passed': False, 'status': 'incomplete'}) + '\n')
results = []
# An OSS Python launcher may set its own runtime paths. Child Make targets
# can select another Python, so let that interpreter initialize its environment.
env = os.environ.copy()
for name in ('PYTHONHOME', 'PYTHONPATH', 'PYTHONEXECUTABLE', '__PYVENV_LAUNCHER__'):
    env.pop(name, None)
for target in steps:
    dependency = {'sim-spice-fine': 'sim-spice-routed', 'update-frequency-model': 'sim-spice-fine',
                  'sim-spice-transitions': 'sim-spice-routed'}.get(target)
    if dependency and any(r['target'] == dependency and not r['passed'] for r in results):
        results.append({'target': target, 'passed': False, 'status': 'blocked', 'dependency': dependency})
        continue
    if target in ('sim-divider-verilog', 'sim-rtl-verilog') and any(r['target'] == 'update-frequency-model' and not r['passed'] for r in results):
        results.append({'target': target, 'passed': False, 'status': 'blocked', 'dependency': 'update-frequency-model'})
        continue
    print('Running', target, flush=True)
    with (out / (target + '.log')).open('w') as log:
        result = subprocess.run(['make', target], stdout=log, stderr=subprocess.STDOUT, env=env)
    results.append({'target': target, 'passed': result.returncode == 0, 'status': 'complete', 'returncode': result.returncode})
    summary.write_text(json.dumps({'passed': False, 'status': 'incomplete', 'results': results}, indent=2) + '\n')
passed = all(r['passed'] for r in results)
summary.write_text(json.dumps({'passed': passed, 'status': 'complete', 'results': results}, indent=2) + '\n')
raise SystemExit(0 if passed else 1)
