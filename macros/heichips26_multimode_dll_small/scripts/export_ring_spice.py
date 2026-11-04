#!/usr/bin/env python3
"""Translate the actual explicit oscillator cells into PDK transistor CDL."""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from build_paths import ROOT

def export(pdk, out):
    os.environ.setdefault('APPIMAGE_EXTRACT_AND_RUN', '1')
    out.mkdir(parents=True,exist_ok=True)
    cells=pdk/'libs.ref/sg13cmos5l_stdcell'
    lib=cells/'lib/sg13cmos5l_stdcell_typ_1p20V_25C.lib'
    cdl=cells/'cdl/sg13cmos5l_stdcell.cdl'
    sources=[ROOT/'rtl/cell_map.v',ROOT/'rtl/ring_oscillator.v']
    def q(path):return '"'+str(path.resolve()).replace('"','\\"')+'"'
    script=out/'export.ys'
    script.write_text(f'read_liberty -lib {q(lib)}\nread_verilog -sv '+ ' '.join(map(q,sources))+'\nhierarchy -check -top ring_oscillator\nproc\nflatten\nwrite_json '+q(out/'ring.json')+'\n')
    with (out/'export.log').open('w') as log:
        subprocess.run([os.environ.get('YOSYS','yosys'),'-Q','-T','-s',str(script)],stdout=log,stderr=subprocess.STDOUT,check=True)
    module=json.loads((out/'ring.json').read_text())['modules']['ring_oscillator']
    blocks={m.group(1):(m.group(2).split(),m.group(0)) for m in re.finditer(r'^\.SUBCKT\s+(\S+)\s+([^\n]+)\n.*?^\.ENDS[^\n]*',cdl.read_text(),re.M|re.S|re.I)}
    nodes={};ports=[]
    for name,info in module['ports'].items():
        for bitno,bit in enumerate(info['bits']):
            node=name if len(info['bits'])==1 else f'{name}_{bitno}'
            nodes[bit]=node;ports.append(node)
    def node(bit):
        if isinstance(bit,str):
            if bit not in ('0','1'):raise ValueError('Undefined node '+bit)
            return 'VDD' if bit=='1' else 'VSS'
        return nodes.get(bit,f'n{bit}')
    lines=['* Generated from explicit CMOS RTL','.subckt ring_oscillator '+' '.join(ports)+' VDD VSS']
    used=set();instances={}
    for index,(name,cell) in enumerate(sorted(module['cells'].items())):
        kind=cell['type']
        if kind=='$scopeinfo':continue
        if kind not in blocks:raise ValueError('No PDK transistor model for '+kind)
        pins=[]
        for pin in blocks[kind][0]:
            bits=cell['connections'].get(pin,[])
            if pin in ('VDD','VSS'):pins.append(pin)
            elif len(bits)==1:pins.append(node(bits[0]))
            elif len(bits)==0:pins.append(f'unconnected_{index}_{pin}')
            else:raise ValueError('Vector standard-cell pin')
        lines.append(f'X{index} '+' '.join(pins)+' '+kind)
        instances[f'X{index}']=name;used.add(kind)
    lines.append('.ends ring_oscillator')
    (out/'ring.spice').write_text('\n'.join(lines)+'\n')
    (out/'cells.spice').write_text('\n\n'.join(re.sub(r'^M','X',blocks[k][1],flags=re.M) for k in sorted(used))+'\n')
    manifest={'ports':ports+['VDD','VSS'],'cells':len(instances),'instances':instances,
              'source_sha256':{str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in sources+[lib,cdl]}}
    (out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
    return manifest
