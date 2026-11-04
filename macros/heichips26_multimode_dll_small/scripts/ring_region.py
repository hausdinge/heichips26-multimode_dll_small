#!/usr/bin/env python3
"""Fence explicit oscillator cells without creating a macro or route blockage."""
import click
import odb
from reader import click_odb

@click.command()
@click.option('--region', required=True)
@click_odb
def main(reader, region):
    bounds = [float(value) for value in region.split(',')]
    if len(bounds) != 4 or bounds[0] >= bounds[2] or bounds[1] >= bounds[3]:
        raise ValueError('Expected a nonempty rectangle')
    block = reader.block
    units = block.getDbUnitsPerMicron()
    fence = odb.dbRegion.create(block, 'oscillator')
    fence.setRegionType('EXCLUSIVE')
    odb.dbBox.create(fence, *[round(value * units) for value in bounds])
    group = odb.dbGroup.create(block, 'oscillator')
    group.setType('VOLTAGE_DOMAIN')
    fence.addGroup(group)
    cells = [inst for inst in block.getInsts() if inst.getName().startswith('u_dll/u_ring/')]
    if len(cells) < 280:
        raise ValueError(f'Only {len(cells)} oscillator cells found')
    for inst in cells:
        group.addInst(inst)
    print(f'OSCILLATOR_REGION cells={len(cells)} bounds_um={bounds}')

if __name__ == '__main__':
    main()
