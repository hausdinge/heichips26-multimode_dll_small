#!/usr/bin/env python3
"""Export geometry for documentation without changing the implementation database."""
import json
from pathlib import Path
import sys
import odb

source, target = map(Path, sys.argv[1:])
db = odb.dbDatabase.create()
odb.read_db(db, str(source))
block = db.getChip().getBlock()
units = block.getDbUnitsPerMicron()

def box(rect):
    return [rect.xMin() / units, rect.yMin() / units,
            rect.xMax() / units, rect.yMax() / units]

cells = []
for instance in block.getInsts():
    name = instance.getName().replace("\\", "")
    master = instance.getMaster()
    if master.isFiller() or master.isEndCap():
        continue
    cells.append({"name": name, "master": master.getName(), "box": box(instance.getBBox()),
                  "ring": name.startswith("u_dll/u_ring/")})
target.parent.mkdir(parents=True, exist_ok=True)
region = block.findRegion("oscillator")
if region is None or len(list(region.getBoundaries())) != 1:
    raise ValueError("Missing oscillator placement region")
target.write_text(json.dumps({"die": box(block.getDieArea()),
                              "oscillator_region": box(list(region.getBoundaries())[0]),
                              "cells": cells}, indent=2) + "\n")
