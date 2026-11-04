#!/usr/bin/env python3
"""Schematic or extracted oscillator sweeps with measured startup and live trim."""
import argparse
import concurrent.futures
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
from time import monotonic
import numpy as np
from build_paths import ROOT, TOP, run_dir
from export_ring_spice import export


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


RUNNER_SHA256 = digest(Path(__file__))

def trim_mask(level):
    primary=[8,3,0,10,4,6,11,2,7,12,1,5,9]
    secondary=[21,16,13,24,18,22,15,19,25,17,14,23,20]
    end=[35,29,26,32,37,31,34,28,36,27,33,30,38]
    return sum((1<<i) for i in range(13) if primary[i]<level<=end[i]) + sum((1<<(i+13)) for i in range(13) if secondary[i]<level)


def edges(t,y,threshold,rising=True):
    match=(y[:-1]<threshold)&(y[1:]>=threshold) if rising else (y[:-1]>threshold)&(y[1:]<=threshold)
    idx=np.flatnonzero(match)
    return t[idx]+(threshold-y[idx])*(t[idx+1]-t[idx])/(y[idx+1]-y[idx])


def waveform(path, stop, step):
    data=np.loadtxt(path,skiprows=1)
    if data.ndim!=2 or data.shape[1]!=2 or not np.isfinite(data).all():
        raise ValueError('Malformed or nonfinite transient')
    t=data[:,0]*1e9
    if np.any(np.diff(t)<=0) or t[-1]<stop-step/1000:
        raise ValueError(f'Incomplete/nonmonotonic transient: {t[-1]} ns, expected {stop}')
    return t,data[:,1]


def measure(path,cfg,corner,stop,transition=False,period_bounds=None):
    t,y=waveform(path,stop,cfg['max_step_ps'])
    start=cfg['reset_ns']+cfg['warmup_ns'];voltage=corner['voltage']
    rise=edges(t,y,voltage/2);fall=edges(t,y,voltage/2,False)
    rise=rise[rise>=start];fall=fall[fall>=start]
    if len(rise)<5 or len(fall)<5:raise ValueError('Fewer than five settled edges')
    period=np.diff(rise)
    merged=np.sort(np.concatenate([rise,fall]));pulses=np.diff(merged)
    selected=y[t>=start]
    result={'frequency_mhz':float(1000/np.mean(period)),
            'period_spread_pct':float(np.ptp(period)/np.mean(period)*100),
            'minimum_pulse_ns':float(min(pulses)),'minimum_period_ns':float(min(period)),
            'maximum_period_ns':float(max(period)),'measurement_start_ns':start,'stop_ns':stop,
            'minimum_v':float(min(selected)),'maximum_v':float(max(selected))}
    high=[fall[fall>r][0]-r for r in rise[:-1] if np.any(fall>r)]
    result['duty_pct']=float(np.mean(high)/np.mean(period)*100)
    if min(selected)>voltage*.1 or max(selected)<voltage*.9:raise ValueError('Output amplitude failed')
    if not transition:
        if result['period_spread_pct']>1 or not 35<result['duty_pct']<65:
            raise ValueError('Oscillation did not settle or duty cycle failed')
    else:
        fast,slow=period_bounds
        result['limits']={'minimum_pulse_ns':.30*fast,'minimum_period_ns':.75*fast,'maximum_period_ns':1.25*slow}
        if min(pulses)<.30*fast or min(period)<.75*fast or max(period)>1.25*slow:
            raise ValueError('Live trim pulse/period bound failed: '+str(result))
    return result


def extract(pdk_root, netdir):
    pex=run_dir()/'pex'
    view=pex/'ring_view'
    view.mkdir(parents=True,exist_ok=True)
    backend=[sys.executable,str(ROOT/'scripts/run_backend.py'),'--tool']
    commands=[backend+['openroad','-exit','-python',str(ROOT/'scripts/extract_ring_view.py'),str(run_dir()/f'views/odb/{TOP}.odb'),str(view)],
              backend+['python3',str(ROOT/'scripts/stream_ring_view.py'),'--pdk-root',str(pdk_root),str(view)],
              backend+['sh',str(ROOT/'scripts/sak-pex.sh'),'-m','3','-n','ring_oscillator_pex','-t','1000','-r','100','-y','0','-w',str(pex/'ring'),str(view/'ring_oscillator.gds')]]
    env = os.environ.copy()
    env['PDKPATH'] = str(pdk_root / 'ihp-sg13cmos5l')
    for index,command in enumerate(commands):
        with (pex/f'extract_{index}.log').open('w') as log:
            subprocess.run(command,stdout=log,stderr=subprocess.STDOUT,check=True,env=env)
    source=pex/'ring/ring_oscillator.pex.spice'
    text=source.read_text()
    flat=re.sub(r'\n\+',' ',text)
    matches=re.findall(r'^\.subckt\s+ring_oscillator_pex\s+([^\n]+)',flat,re.I|re.M)
    if len(matches)!=1:raise ValueError('Missing extracted top')
    pins=matches[0].split()
    ports=[{'VPWR':'VDD','VGND':'VSS'}.get(pin,re.sub(r'\[(\d+)\]',r'_\1',pin)) for pin in pins]
    expected={'reset','clk_out','VDD','VSS'}|{f'trim_{i}' for i in range(26)}
    if set(ports)!=expected or len(ports)!=len(expected):raise ValueError('Extracted port mismatch: '+str(ports))
    kept=[];removed=0
    for line in text.splitlines():
        words=line.split()
        if words and words[0][0] in 'RCX':
            model_index=next((i-1 for i,w in enumerate(words[1:],1) if '=' in w),len(words)-1)
            count=model_index-1 if words[0][0]=='X' else 2
            for i in range(1,count+1):
                if re.fullmatch(r'(VPWR|VGND)\..+',words[i]):words[i]=words[i].split('.')[0]
            if all(n in ('VPWR','VGND') for n in words[1:count+1]):removed+=1;continue
            line=' '.join(words)
        kept.append(line)
    netdir.mkdir(parents=True,exist_ok=True)
    signal=netdir/'signal_rc.spice';signal.write_text('\n'.join(kept)+'\n')
    (netdir/'ring.spice').write_text(f'.include "{signal}"\n.subckt ring_oscillator '+' '.join(ports)+'\nXpex '+' '.join(ports)+' ring_oscillator_pex\n.ends ring_oscillator\n')
    (netdir/'cells.spice').write_text('* Transistors included in extracted fixture.\n')
    (netdir/'manifest.json').write_text(json.dumps({'ports':ports,'source_sha256':digest(source),
        'source_odb_sha256':digest(run_dir()/f'views/odb/{TOP}.odb'),'ideal_rails':True,
        'removed_power_only_elements':removed,'scope':'Retained oscillator signal RC; 20 fF declared load, digital neighbors omitted'},indent=2)+'\n')


def simulate(corner,level,cfg,netdir,out,pdk,ngspice,update=None,static=None):
    step = min(cfg['max_step_ps'], cfg.get('corner_max_step_ps', {}).get(corner['name'], cfg['max_step_ps']))
    if update is not None:
        step = min(step, 10)
    cfg = {**cfg, 'max_step_ps': step}
    name=f'{corner["name"]}_trim{level:02d}' if update is None else f'tt_trim{level:02d}_{level+1:02d}_{update}ns'
    case=out/name;case.mkdir(parents=True,exist_ok=True)
    manifest=json.loads((netdir/'manifest.json').read_text())
    for model in ('psp103','psp103_nqs'):
        source=pdk/f'libs.tech/ngspice/osdi/{model}.osdi'
        if not source.is_file():raise FileNotFoundError(source)
        link=case/(model+'.osdi')
        if link.is_symlink():link.unlink()
        link.symlink_to(source)
    (case/'.spiceinit').write_text((ROOT/'testbenches/ngspice/spiceinit.template').read_text().replace('@MODEL_DIR@',str(pdk/'libs.tech/ngspice/models')))
    voltage=corner['voltage'];reset=cfg['reset_ns'];start=reset+cfg['warmup_ns'];ramp=cfg['supply_ramp_ns']
    updates = cfg.get('transition_updates', {}).get(str(update), 11)
    stop=start+cfg['measure_ns'] if update is None else start+(updates+1)*update
    lines=[f'CMOS oscillator {name}',f'.lib "cornerMOSlv.lib" {corner["model"]}', '.include "diodes.lib"',
           f'.include "{netdir/"cells.spice"}"',f'.include "{netdir/"ring.spice"}"',f'.temp {corner["temperature"]}',
           f'Vdd VDD 0 PWL(0 0 {ramp}n {voltage})','Vss VSS 0 0',
           f'Vreset reset 0 PWL(0 0 {ramp}n {voltage} {reset}n {voltage} {reset+.05}n 0)',
           'Xdut '+' '.join(manifest['ports'])+' ring_oscillator',f'Cload clk_out 0 {cfg["output_load_ff"]}f']
    mask=trim_mask(level)
    for bit in range(26):
        value=voltage if mask>>bit&1 else 0
        points=[f'0 0 {ramp}n {value}']
        if update is not None:
            for index in range(1,updates+1):
                time=start+index*update
                new=voltage if trim_mask(level+(index%2))>>bit&1 else 0
                points.append(f'{time}n {value} {time+.05}n {new}');value=new
        lines.append(f'Vtrim{bit} trim_{bit} 0 PWL('+ ' '.join(points)+')')
    if cfg.get('routed'):lines.append('.option rshunt=1e12')
    analysis = f'tran {cfg["max_step_ps"]}p {stop}n 0 {cfg["max_step_ps"]}p'
    if update is not None:
        # Live trim uses second-order Gear integration and at most a 10 ps
        # step; static frequency accuracy is checked by halving the step.
        lines.append('.option method=gear maxord=2')
    lines += ['.control', 'set klu', 'set num_threads=1', 'save v(clk_out)',
              'set wr_singlescale', 'set wr_vecnames', 'set numdgt=17', analysis,
              'wrdata waveform.dat v(clk_out)', 'quit', '.endc', '.end']
    (case/'test.sp').write_text('\n'.join(lines)+'\n')
    inputs = [case/'test.sp', case/'.spiceinit', netdir/'manifest.json',
              *sorted(netdir.glob('*.spice')), case/'psp103.osdi', case/'psp103_nqs.osdi']
    input_hashes = {str(f.relative_to(case) if f.is_relative_to(case) else f): digest(f)
                    for f in inputs}
    stale = case/'measurements.json'
    if stale.exists():
        stale.unlink()
    env = os.environ.copy()
    env['SPICE_USERINIT_DIR'] = str(case)
    env['OMP_NUM_THREADS'] = '1'
    started = monotonic()
    with (case/'console.log').open('w') as log:
        process=subprocess.run([ngspice,'-b','-o','ngspice.log','test.sp'],cwd=case,stdout=log,stderr=subprocess.STDOUT,timeout=cfg.get('case_timeout_s',3600),env=env)
    log=(case/'ngspice.log').read_text() if (case/'ngspice.log').is_file() else ''
    if process.returncode or re.search(r'Error|Timestep too small|simulation\(s\) aborted', log, re.I) or not (case/'waveform.dat').is_file():raise RuntimeError('ngspice failed: '+str(case))
    bounds=None
    if update is not None:bounds=sorted([1000/static[level]['frequency_mhz'],1000/static[level+1]['frequency_mhz']])
    measured=measure(case/'waveform.dat',cfg,corner,stop,update is not None,bounds)
    if input_hashes != {str(f.relative_to(case) if f.is_relative_to(case) else f): digest(f) for f in inputs}:
        raise ValueError('SPICE inputs changed during simulation')
    result={'case':name,'corner':corner,'level':level,'update_period_ns':update,'passed':True,**measured,
            'max_step_ps':cfg['max_step_ps'],'elapsed_s':monotonic()-started,
            'input_sha256': input_hashes, 'runner_sha256': RUNNER_SHA256,
            'waveform_sha256': digest(case/'waveform.dat'),
            'integration_method': 'gear' if update is not None else 'trapezoidal'}
    (case/'measurements.json').write_text(json.dumps(result,indent=2)+'\n')
    print(name,round(measured['frequency_mhz'],3),'MHz',flush=True)
    return result


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--routed',action='store_true')
    p.add_argument('--fine',action='store_true',help='Half-step endpoint sweep for convergence checking')
    p.add_argument('--finer',action='store_true',help='Quarter-step diagnostic endpoint sweep')
    p.add_argument('--case-timeout-s',type=float,default=7200)
    p.add_argument('--jobs',type=int,default=4)
    p.add_argument('--trim',nargs='+',type=int)
    p.add_argument('--corners',nargs='+')
    p.add_argument('--full-pvt',action='store_true')
    p.add_argument('--transitions',action='store_true')
    p.add_argument('--no-extract',action='store_true')
    p.add_argument('--update-model',action='store_true')
    a=p.parse_args()
    cfg=json.loads((ROOT/'testbenches/ngspice/oscillator.json').read_text())
    if a.update_model:
        path=run_dir()/'simulation/ngspice/routed/summary.json'
        summary=json.loads(path.read_text())
        results={r['level']:r for r in summary['results'] if r['corner']['name']=='tt'}
        if not summary['passed'] or set(results)!=set(range(40)):raise ValueError('Need complete passing routed TT sweep')
        lines=['// Measured routed oscillator at TT, 20 fF load; no physical phase model.',f'// Source summary SHA256: {digest(path)}','function real frequency_mhz(input integer code);','begin','case(code)']
        lines += [f'{i}: frequency_mhz = {results[i]["frequency_mhz"]:.12f};' for i in range(40)]
        lines += ['default: frequency_mhz = 0.0;','endcase','end','endfunction']
        (ROOT/'testbenches/verilog/frequency_table.vh').write_text('\n'.join(lines)+'\n')
        return
    if a.jobs<1:raise ValueError('JOBS must be positive')
    if a.case_timeout_s <= 0:raise ValueError('Case timeout must be positive')
    cfg['case_timeout_s'] = a.case_timeout_s
    if a.fine and a.finer:raise ValueError('Choose one refinement level')
    if (a.fine or a.finer) and a.transitions:raise ValueError('Fine sweep is a static endpoint check')
    refinement = 4 if a.finer else (2 if a.fine else 1)
    cfg['max_step_ps'] /= refinement
    cfg['corner_max_step_ps'] = {corner: step / refinement for corner, step in cfg.get('corner_max_step_ps', {}).items()}
    cfg['routed']=a.routed
    if not a.routed:
        cfg['max_step_ps'] = min(cfg['max_step_ps'], 10)
    pdk_root=Path(os.environ.get('PDK_ROOT',ROOT.parents[1]/'IHP-Open-PDK')).resolve();pdk=pdk_root/'ihp-sg13cmos5l'
    scope='routed' if a.routed else 'schematic'
    netdir=run_dir()/f'netlist/spice/{scope}'
    if a.routed:
        if not a.no_extract:extract(pdk_root,netdir)
    elif not a.no_extract:export(pdk,netdir)
    out=run_dir()/'simulation/ngspice'/scope
    if a.fine:out=out.with_name(scope+'_fine')
    if a.finer:out=out.with_name(scope+'_finer')
    if a.transitions:out=out.with_name(scope+'_transitions')
    out.mkdir(parents=True,exist_ok=True)
    static=None
    if a.transitions:
        base=json.loads((out.parent/scope/'summary.json').read_text())
        if not base['passed']:raise ValueError('Static baseline failed')
        static={r['level']:r for r in base['results'] if r['corner']['name']=='tt'}
        tt=next(c for c in cfg['corners'] if c['name']=='tt')
        cases=[(tt,i,u) for i in cfg['transition_pairs'] for u in cfg['update_periods_ns']]
    else:
        cases=[(c,i,None) for c in cfg['corners'] if not a.corners or c['name'] in a.corners
               for i in (a.trim if a.trim is not None else ([0,39] if a.fine or a.finer else (cfg['trim_levels'] if a.full_pvt or (a.routed and c['name']=='tt') else [0,39])))]
    if not cases or any(not 0<=i<=39 for c,i,u in cases):raise ValueError('Empty or invalid sweep')
    (out/'config.json').write_text(json.dumps(cfg,indent=2)+'\n')
    summary=out/'summary.json';summary.write_text(json.dumps({'passed':False,'status':'incomplete'})+'\n')
    results=[];failures=[]
    ngspice=os.environ.get('NGSPICE','ngspice')
    with concurrent.futures.ThreadPoolExecutor(max_workers=a.jobs) as pool:
        jobs={pool.submit(simulate,c,i,cfg,netdir,out,pdk,ngspice,u,static):(c['name'],i,u) for c,i,u in cases}
        for future in concurrent.futures.as_completed(jobs):
            try:results.append(future.result())
            except Exception as exc:failures.append({'case':jobs[future],'error':str(exc)});print(exc,file=sys.stderr,flush=True)
    if not a.transitions:
        for corner in cfg['corners']:
            sequence=sorted((r for r in results if r['corner']['name']==corner['name']),key=lambda r:r['level'])
            for left,right in zip(sequence,sequence[1:]):
                if right['frequency_mhz']>=left['frequency_mhz']:failures.append({'error':f'Nonmonotonic {left["case"]} -> {right["case"]}'})
    result={'passed':not failures and len(results)==len(cases),'status':'complete','scope':scope,
            'results':sorted(results,key=lambda r:r['case']),'failures':failures,
            'load_ff':cfg['output_load_ff'],'configuration_sha256':digest(ROOT/'testbenches/ngspice/oscillator.json'),
            'runner_sha256':RUNNER_SHA256,'netlist_manifest_sha256':digest(netdir/'manifest.json')}
    summary.write_text(json.dumps(result,indent=2)+'\n')
    if not result['passed']:raise SystemExit(1)

if __name__=='__main__':main()
