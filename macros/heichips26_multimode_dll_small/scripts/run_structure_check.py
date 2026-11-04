#!/usr/bin/env python3
"""Compare every explicit waveform cell and connection with routed gates."""
import json
import os
from pathlib import Path
import re
import subprocess
import sys
from build_paths import ROOT, TOP, run_dir

# Keep technology choices in the cell map, including explicit synchronizers.
for source in sorted((ROOT / 'rtl').glob('*')):
    if source.suffix not in ('.v', '.sv') or source.name == 'cell_map.v':
        continue
    code = re.sub(r'//[^\n]*|/\*.*?\*/', '', source.read_text(), flags=re.S)
    if re.search(r'\bsg13cmos5l_\w+\b', code):
        raise ValueError('Raw standard-cell instance outside cell_map.v: ' + str(source))

out=run_dir()/'verification/structure'
out.mkdir(parents=True,exist_ok=True)
pdk=Path(os.environ['PDK_ROOT'])/'ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell'
lib=pdk/'lib/sg13cmos5l_stdcell_typ_1p20V_25C.lib'
def q(path):return '"'+str(path.resolve()).replace('"','\\"')+'"'
for mode,source in [('reference',ROOT/f'rtl/{TOP}.sv'),('routed',run_dir()/f'views/nl/{TOP}.nl.v')]:
    script=out/(mode+'.ys')
    script.write_text(f'read_liberty -lib {q(lib)}\nread_verilog -sv -I{q(ROOT/"rtl")} {q(source)}\nhierarchy -check -top {TOP}\nproc\nwrite_json {q(out/(mode+".json"))}\n')
    command=[sys.executable,str(ROOT/'scripts/run_backend.py'),'--tool','yosys','-Q','-T','-s',str(script)]
    with (out/(mode+'.log')).open('w') as log:
        subprocess.run(command,stdout=log,stderr=subprocess.STDOUT,check=True)
subprocess.run([sys.executable,str(ROOT/'scripts/check_structure.py'),str(out/'reference.json'),str(out/'routed.json'),'--output',str(out/'summary.json')],check=True)
