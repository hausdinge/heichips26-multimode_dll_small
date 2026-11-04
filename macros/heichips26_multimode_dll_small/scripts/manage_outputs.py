#!/usr/bin/env python3
"""Build snapshots, safe cleanup and publication of checked physical views."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
from build_paths import ROOT, TOP, run_dir

TEMPLATE_SHA256 = '5921a1eb641447b5a20aacccb8f342ecb88c930dc06524df0e2de17e54e36f58'

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def inputs():
    paths = list((ROOT/'rtl').glob('*')) + list((ROOT/'flow/librelane').glob('*'))
    paths += [ROOT/'scripts'/name for name in ('run_backend.py','ring_region.py')]
    return {str(p.relative_to(ROOT)): digest(p) for p in sorted(paths) if p.is_file() and p.suffix != '.md'}

def verification_sources():
    paths = [p for base in ('rtl', 'scripts', 'testbenches', 'flow')
             for p in (ROOT / base).rglob('*')
             if p.is_file() and '__pycache__' not in p.parts]
    return {str(p.relative_to(ROOT)): digest(p) for p in sorted(paths)}

def write_json(path, data):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix('.tmp')
    temporary.write_text(json.dumps(data, indent=2)+'\n')
    temporary.replace(path)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('action', choices=['snapshot','success','publish','clean','clean-sim'])
    parser.add_argument('--run-tag')
    args = parser.parse_args()
    run = run_dir(explicit=args.run_tag)
    template = ROOT/'flow/librelane/heichips26_template_tiny_analog.def'
    if digest(template) != TEMPLATE_SHA256:
        raise ValueError('The fixed tiny analog DEF template changed')
    if args.action in ('clean','clean-sim'):
        target = ROOT/'build' if args.action == 'clean' else run/'simulation'
        if target.is_symlink() or ROOT/'build' not in [target,*target.parents]:
            raise ValueError('Unsafe cleanup path')
        if target.exists(): shutil.rmtree(target)
        return
    snapshot = run/'implementation_inputs.json'
    if args.action == 'snapshot':
        current = inputs()
        if snapshot.exists() and json.loads(snapshot.read_text()) != current:
            raise ValueError('Sources changed: use a fresh BUILD_TAG')
        write_json(snapshot, current)
        return
    if json.loads(snapshot.read_text()) != inputs():
        raise ValueError('Physical implementation inputs changed since this build')
    checks = {}
    for name in ('physical_summary','layout','reset_electrical/summary'):
        path = run/'verification'/(name+'.json')
        checks[name] = json.loads(path.read_text())
        if not checks[name].get('passed'): raise ValueError(f'Failed {name}')
    if checks['physical_summary']['metrics_sha256'] != digest(run/'views/metrics.json'):
        raise ValueError('Physical metrics are stale')
    if checks['layout']['odb_sha256'] != digest(run/f'views/odb/{TOP}.odb'):
        raise ValueError('Layout check is stale')
    structure = run/'verification/structure/summary.json'
    checks['structure'] = json.loads(structure.read_text())
    if not checks['structure']['passed']:
        raise ValueError('Explicit waveform structure check failed')
    for name, expected in checks['reset_electrical/summary']['input_sha256'].items():
        if digest(Path(name)) != expected:
            raise ValueError('Reset electrical audit is stale: ' + name)
    if args.action == 'success':
        (ROOT/'build/last_successful_run').write_text(run.name+'\n')
        return
    qualification = run/'verification/qualification.json'
    if qualification.is_file():
        checks['qualification'] = json.loads(qualification.read_text())
        if checks['qualification'].get('passed'):
            if checks['qualification'].get('source_sha256') != verification_sources():
                raise ValueError('Qualification sources changed; run check-qualification again')
            for name, expected in checks['qualification']['checked_reports_sha256'].items():
                if digest(run / name) != expected:
                    raise ValueError('Qualification report changed: ' + name)
    final = ROOT/'final'
    final.mkdir(exist_ok=True)
    for name in ('gds','lef','lib','nl','pnl','spef','spice','vh','render'):
        src = run/'views'/name
        if src.is_dir(): shutil.copytree(src,final/name,dirs_exist_ok=True)
    summaries = {}
    for path in sorted((run/'simulation').glob('**/summary.json')):
        data = json.loads(path.read_text())
        summaries[str(path.relative_to(run))] = {'passed':data.get('passed'),'status':data.get('status','complete'),'sha256':digest(path)}
    manifest = {'run_tag':run.name,'top':TOP,'implementation_inputs':inputs(),
                'template_sha256':TEMPLATE_SHA256,'verification':checks,
                'simulation_summaries':summaries,
                'source_sha256':verification_sources(),
                'published_sha256':{str(p.relative_to(final)):digest(p) for p in sorted(final.rglob('*')) if p.is_file() and p.name!='manifest.json'}}
    write_json(final/'manifest.json',manifest)
    print('Published checked views and explicit verification manifest:', final)

if __name__ == '__main__': main()
