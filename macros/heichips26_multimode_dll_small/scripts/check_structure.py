#!/usr/bin/env python3
"""Compare explicitly instantiated standard cells, including intentional loads.

Input JSONs come from Yosys read_liberty -lib; read_verilog; hierarchy; proc;
write_json (no optimization for the RTL reference). Net aliases are compared
through endpoints, not through unstable generated net names.
"""
import argparse
from collections import defaultdict, Counter
import json
from pathlib import Path


def expand(path):
    modules = json.loads(Path(path).read_text())['modules']
    leaves, ports = {}, {}
    def walk(modname, prefix, portmap):
        mod = modules[modname]
        bits = {}
        for port, signal in mod['ports'].items():
            for i, bit in enumerate(signal['bits']):
                if port in portmap and i < len(portmap[port]):
                    bits[bit] = portmap[port][i]
        def bitname(bit):
            if isinstance(bit, str):
                return ('constant', bit)
            return bits.get(bit, (prefix, bit))
        for name, cell in mod.get('cells', {}).items():
            name = prefix + name
            conns = {p: [bitname(b) for b in bs] for p, bs in cell['connections'].items()}
            typ = cell['type']
            child = modules.get(typ, {})
            if child.get('cells') and not typ.startswith('sg13cmos5l_'):
                walk(typ, name+'/', conns)
            else:
                leaves[name] = {'type': typ, 'connections': conns,
                                'directions': cell.get('port_directions', {p: info['direction'] for p,info in child.get('ports',{}).items()})}
        if not prefix:
            for p, info in mod['ports'].items():
                for i, b in enumerate(info['bits']):
                    ports[f'{p}[{i}]'] = bitname(b)
    walk('heichips26_multimode_dll_small', '', {})
    return leaves, ports


def signature(cells, ports, selected):
    nets = defaultdict(set)
    for n in selected:
        if n not in cells:
            continue
        for pin, bits in cells[n]['connections'].items():
            for i, bit in enumerate(bits):
                nets[bit].add(f'{n}/{pin}[{i}]')
    for name, bit in ports.items():
        nets[bit].add('PORT:'+name)
    result = {}
    for n in selected:
        if n not in cells:
            continue
        for pin, bits in cells[n]['connections'].items():
            if pin in ('VDD','VSS','VPWR','VGND'): continue
            for i, bit in enumerate(bits):
                result[f'{n}/{pin}[{i}]'] = sorted(nets[bit])
    return result


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('reference')
    ap.add_argument('candidate')
    ap.add_argument('--output', required=True)
    args=ap.parse_args()
    ref, rp=expand(args.reference)
    cand, cp=expand(args.candidate)
    # Ties are supply-connection implementation cells. All explicit signal
    # cells, including buffers with unconnected outputs, are protected.
    selected={n for n,c in ref.items() if c['type'].startswith('sg13cmos5l_') and
              c['type'] not in ('sg13cmos5l_tiehi','sg13cmos5l_tielo') and
              not n.rsplit('/',1)[-1].startswith('_')}
    missing=sorted(selected-cand.keys())
    changed={n:[ref[n]['type'],cand[n]['type']] for n in selected & cand.keys() if ref[n]['type'] != cand[n]['type']}
    a,b=signature(ref,rp,selected),signature(cand,cp,selected)
    wiring={p:{'before':v,'after':b.get(p)} for p,v in a.items() if b.get(p)!=v}
    # An intentionally floating output must remain unloaded even by newly
    # inserted digital cells, which are outside the protected-cell signature.
    def all_endpoints(cells, ports):
        nets=defaultdict(set)
        for name,cell in cells.items():
            for pin,bits in cell['connections'].items():
                for i,bit in enumerate(bits):nets[bit].add(f'{name}/{pin}[{i}]')
        for name,bit in ports.items():nets[bit].add('PORT:'+name)
        return nets
    ref_nets=all_endpoints(ref,rp);cand_nets=all_endpoints(cand,cp)
    floating=[];loaded={}
    for name in sorted(selected):
        for pin,bits in ref[name]['connections'].items():
            if ref[name]['directions'].get(pin)!='output':continue
            if bits and any(len(ref_nets[bit])!=1 for bit in bits):continue
            key=name+'/'+pin;floating.append(key)
            cbits=cand.get(name,{}).get('connections',{}).get(pin,[])
            attached=sorted({e for bit in cbits for e in cand_nets[bit] if not e.startswith(key+'[')})
            if attached:loaded[key]=attached
    result={'protected_cells':len(selected), 'missing_cells':missing,
            'changed_cell_types':changed,'changed_connections':wiring,
            'intentionally_unloaded_outputs':floating, 'unexpected_floating_output_loads':loaded,
            'protected_type_counts':dict(sorted(Counter(ref[n]['type'] for n in selected).items()))}
    forbidden={label:{n:c['type'] for n,c in cells.items()
                         if any(x in c['type'].lower() for x in ('ebuf','einv','tribuf','tbuf','dlygate','delaygate'))}
               for label,cells in [('reference',ref),('candidate',cand)]}
    result['forbidden_cells']=forbidden
    result['passed']=not (missing or changed or wiring or loaded or any(forbidden.values()))
    Path(args.output).write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'protected_cells':len(selected), 'missing':len(missing), 'resized':len(changed), 'rewired_pins':len(wiring), 'passed':result['passed']}))
    if wiring: print('Changed pin connections:',len(wiring))
    raise SystemExit(0 if result['passed'] else 1)

if __name__=='__main__': main()
