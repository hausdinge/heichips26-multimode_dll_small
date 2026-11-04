#!/usr/bin/env python3
"""Stream the retained DEF and add passive labels for transistor extraction."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
from librelane.common import get_script_dir
import klayout.db as pya
from build_paths import TOP
p=argparse.ArgumentParser();p.add_argument('--pdk-root',type=Path,required=True);p.add_argument('view',type=Path);a=p.parse_args()
v=a.view.resolve();pdk=a.pdk_root/'ihp-sg13cmos5l';tech=pdk/'libs.tech/klayout/tech';cells=pdk/'libs.ref/sg13cmos5l_stdcell'
command=[sys.executable,str(Path(get_script_dir())/'klayout/stream_out.py'),str(v/'ring.def'),
         '--output',str(v/'unlabelled.gds'),'--top',TOP,'--conflict-resolution','RenameCell',
         '--lyp',str(tech/'sg13cmos5l.lyp'),'--lyt',str(tech/'sg13cmos5l.lyt'),'--lym',str(tech/'sg13cmos5l.map'),
         '--input-lef',str(cells/'lef/sg13cmos5l_tech.lef'),'--input-lef',str(cells/'lef/sg13cmos5l_stdcell.lef'),
         '--with-gds-file',str(cells/'gds/sg13cmos5l_stdcell.gds')]
subprocess.run(command,check=True)
layout=pya.Layout();layout.read(str(v/'unlabelled.gds'));top=layout.cell(TOP);top.name='ring_oscillator'
metal=pya.Region(top.begin_shapes_rec(layout.layer(8,0)))
for probe in json.loads((v/'probes.json').read_text())['probes']:
    x,y=[round(probe[k]/layout.dbu) for k in ('x_um','y_um')]
    if metal.interacting(pya.Region(pya.Box(x-1,y-1,x+1,y+1))).is_empty():raise ValueError('Probe off metal')
    top.shapes(layout.layer(8,2)).insert(pya.Text(probe['name'],pya.Trans(x,y)))
layout.write(str(v/'ring_oscillator.gds'))
