#!/usr/bin/env python3
"""Verify the fixed footprint, template pin shapes and flat oscillator region."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import odb

p = argparse.ArgumentParser()
p.add_argument('--odb', type=Path, required=True)
p.add_argument('--template', type=Path, required=True)
p.add_argument('--output', type=Path, required=True)
a = p.parse_args()
db = odb.dbDatabase.create()
odb.read_db(db, str(a.odb))
b = db.getChip().getBlock()
units = b.getDbUnitsPerMicron()
errors = []
die = b.getDieArea()
if [die.xMin(),die.yMin(),die.xMax(),die.yMax()] != [0,0,200*units,200*units]:
    errors.append('Die differs from fixed 200 x 200 um template')
text = a.template.read_text()
pattern = r'- (\S+) \+ NET.*?\+ LAYER (\S+) \( (-?\d+) (-?\d+) \) \( (-?\d+) (-?\d+) \).*?\+ PLACED \( (-?\d+) (-?\d+) \) N'
pins = re.findall(pattern,text,re.S)
for name,layer,x0,y0,x1,y1,x,y in pins:
    if name in ('VPWR','VGND','VAPWR'):continue
    term = b.findBTerm(name)
    if not term:
        errors.append('Missing template pin '+name)
        continue
    expected = [int(x)+int(x0),int(y)+int(y0),int(x)+int(x1),int(y)+int(y1)]
    boxes = [(box.getTechLayer().getName(),[box.xMin(),box.yMin(),box.xMax(),box.yMax()]) for pin in term.getBPins() for box in pin.getBoxes()]
    if (layer,expected) not in boxes:errors.append('Changed template pin '+name)
region = b.findRegion('oscillator')
if not region:errors.append('Missing oscillator fence')
rect = list(region.getBoundaries())[0] if region else None
ring = [i for i in b.getInsts() if i.getName().startswith('u_dll/u_ring/')]
if len(ring)<280:errors.append('Missing explicit oscillator cells')
for inst in b.getInsts():
    if inst.getMaster().isBlock():errors.append('Unexpected hard macro '+inst.getName())
    if re.search(r'(ebuf|einv|tribuf|tbuf|dlygate|delaygate)',inst.getMaster().getName()):errors.append('Forbidden tri-state/dedicated-delay cell '+inst.getName())
for inst in ring:
    box = inst.getBBox()
    if rect and (box.xMin()<rect.xMin() or box.xMax()>rect.xMax() or box.yMin()<rect.yMin() or box.yMax()>rect.yMax()):
        errors.append('Oscillator outside fence '+inst.getName())
power_pins = 0
for inst in b.getInsts():
    for pin in inst.getITerms():
        if str(pin.getSigType()) in ('POWER','GROUND'):
            power_pins += 1
            if pin.getNet() is None:errors.append('Unconnected power '+inst.getName())
result = {'passed':not errors,'errors':errors,'die_um':[0,0,200,200],
          'template_pins_checked':len(pins),'oscillator_cells':len(ring),'power_pins_connected':power_pins,
          'odb_sha256':hashlib.sha256(a.odb.read_bytes()).hexdigest(),
          'template_sha256':hashlib.sha256(a.template.read_bytes()).hexdigest()}
a.output.parent.mkdir(parents=True,exist_ok=True)
a.output.write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
if errors:raise SystemExit(1)
