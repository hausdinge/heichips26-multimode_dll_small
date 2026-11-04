#!/usr/bin/env python3
"""Copy routed oscillator geometry and signal routes; leave the full design intact."""
import hashlib
import json
from pathlib import Path
import sys
import odb

source,out=map(Path,sys.argv[1:])
out.mkdir(parents=True,exist_ok=True)
db=odb.dbDatabase.create();odb.read_db(db,str(source))
b=db.getChip().getBlock();units=b.getDbUnitsPerMicron()
all_cells={i.getName().replace('\\',''):i for i in b.getInsts()}
ring={name:inst for name,inst in all_cells.items() if name.startswith('u_dll/u_ring/')}
if len(ring)<280:raise ValueError('Missing oscillator cells')
probes=[]
def probe(name,instance,pin):
    term=instance.findITerm(pin)
    shapes=[g for p in term.getMTerm().getMPins() for g in p.getGeometry() if g.getTechLayer().getName()=='Metal1']
    if not shapes or not term.getNet():raise ValueError('Missing probe '+name)
    shape=shapes[0];sx=(shape.xMin()+shape.xMax())/2;sy=(shape.yMin()+shape.yMax())/2
    box=instance.getBBox();master=instance.getMaster();orientation=str(instance.getOrient())
    if orientation=='R0':x,y=box.xMin()+sx,box.yMin()+sy
    elif orientation=='MX':x,y=box.xMin()+sx,box.yMin()+master.getHeight()-sy
    elif orientation=='MY':x,y=box.xMin()+master.getWidth()-sx,box.yMin()+sy
    elif orientation=='R180':x,y=box.xMin()+master.getWidth()-sx,box.yMin()+master.getHeight()-sy
    else:raise ValueError('Unexpected orientation '+orientation)
    probes.append({'name':name,'x_um':x/units,'y_um':y/units,'net':term.getNet().getName()})
probe('reset',ring['u_dll/u_ring/iss/core/reset_inv/u_inv'],'A')
probe('clk_out',ring['u_dll/u_ring/u_clkbuf/u_buf'],'X')
for stage in range(13):
    core='u_dll/u_ring/'+(f'dstage[{stage}].id' if stage<12 else 'iss')+'/core/'
    for bit in range(2):probe(f'trim[{stage+13*bit}]',ring[core+f'trim_sync[{bit}].meta/u_ff'],'D')
keep_nets={p.getNet().getName() for i in ring.values() for p in i.getITerms() if p.getNet()}
# Retain physical antenna diodes connected to retained signal nets.
for name,inst in all_cells.items():
    if 'antenna' in inst.getMaster().getName().lower() and any(p.getNet() and p.getNet().getName() in keep_nets for p in inst.getITerms()):ring[name]=inst
for term in list(b.getBTerms()):
    if term.getName() not in ('VPWR','VGND'):odb.dbBTerm.destroy(term)
for name,inst in all_cells.items():
    if name not in ring:odb.dbInst.destroy(inst)
for net in list(b.getNets()):
    if net.getName() not in keep_nets:odb.dbNet.destroy(net)
odb.write_def(b,str(out/'ring.def'));odb.write_db(db,str(out/'ring.odb'))
(out/'probes.json').write_text(json.dumps({'source_odb_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'cells':len(ring),'probes':probes},indent=2)+'\n')
print('Extracted',len(ring),'oscillator cells with retained routes')
