#!/usr/bin/env python3
"""Simulation-only scalar port adapter for Icarus INTERCONNECT annotation.

The physical netlist and every cell instance/connection remain unchanged except
for renaming vector input port bits to scalar ports in a simulation copy. A wire
wrapper restores the original interface. The SDF port tokens are renamed by the
same bijection; no delays are dropped or changed here.
"""
import argparse,json,re
from pathlib import Path
import prepare_sdf

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('netlist',type=Path);ap.add_argument('sdf',type=Path)
    ap.add_argument('output_netlist',type=Path);ap.add_argument('output_sdf',type=Path)
    args=ap.parse_args()
    text=args.netlist.read_text()
    header=re.search(r'module\s+heichips26_multimode_dll_small\s*\((.*?)\);',text,re.S)
    if not header:raise ValueError('Missing top module')
    decls=re.findall(r'^\s*(?:input|output)\s+[^;]+;',text,re.M)
    vectors=re.findall(r'^\s*(input|output)\s+\[(\d+):(\d+)\]\s+(\w+)\s*;',text,re.M)
    maps={}; grouped={}
    for direction,hi,lo,name in vectors:
        grouped[name]=[(f'{name}[{i}]',f'cfg_{name}_bit{i}') for i in range(int(hi),int(lo)-1,-1)]
        maps.update(grouped[name])
    ports=[x.strip() for x in header.group(1).split(',')]
    scalar_ports=[new for port in ports for _,new in grouped.get(port,[(port,port)])]
    core='module heichips26_multimode_dll_small_sim ('+', '.join(scalar_ports)+');'+text[header.end():]
    for direction,hi,lo,name in vectors:
        pattern=r'^\s*'+direction+r'\s+\['+hi+':'+lo+r'\]\s+'+name+r'\s*;'
        core=re.sub(pattern,'\n'+'\n'.join(direction+' '+new+';' for _,new in grouped[name]),core,flags=re.M)
        for old,new in grouped[name]:
            core=re.sub(r'(?<![\w/\\])'+re.escape(old)+r'(?!\w)',new,core)
    # Fold simple output aliases onto the scalar port. Icarus cannot insert an
    # INTERCONNECT arc across a continuous-assignment alias at a module port.
    # This is a net rename only; no cell or delay is removed.
    output_aliases = {}
    scalar_outputs = set(re.findall(r'^\s*output\s+(\w+)\s*;', core, re.M))
    for left, right in re.findall(r'^\s*assign\s+(\w+)\s*=\s*(\w+)\s*;', core, re.M):
        if left not in scalar_outputs:
            continue
        core = re.sub(r'^\s*assign\s+' + left + r'\s*=\s*' + right + r'\s*;', '', core, flags=re.M)
        core = re.sub(r'(?<![\w/\\])' + right + r'(?![\w/])', left, core)
        output_aliases[right] = left
    # Icarus also interprets dots in flattened instance names as hierarchy.
    # Rename every leaf instance by a checked one-to-one mapping in both files.
    instance_map={}
    def rename_instance(match):
        old=match.group(2).lstrip('\\')
        if old in instance_map: raise ValueError('Duplicate instance '+old)
        new=f'cell_{len(instance_map):05d}'
        instance_map[old]=new
        return match.group(1)+' '+new+' ('
    core=re.sub(r'(?m)^\s*(sg13cmos5l_\w+)\s+(\\\S+|[A-Za-z_]\w*)\s*\(',rename_instance,core)
    if not instance_map: raise ValueError('No standard cell instances found')
    connections=[]
    for port in ports:
        connections.extend(f'.{new}({old})' for old,new in grouped.get(port,[(port,port)]))
    wrapper=header.group(0)+'\n'+'\n'.join(decls)+'\nheichips26_multimode_dll_small_sim core ('+', '.join(connections)+');\nendmodule\n'
    args.output_netlist.write_text(core+'\n'+wrapper)
    root=prepare_sdf.parse(args.sdf.read_text())
    def visit(node):
        if not node: return
        if node[0]=='CELLTYPE' and node[1]=='"heichips26_multimode_dll_small"':node[1]='"heichips26_multimode_dll_small_sim"'
        if node[0]=='INSTANCE' and len(node)>1:
            old=node[1].replace('\\','')
            if old not in instance_map: raise ValueError('Unmatched SDF instance '+old)
            node[1]=instance_map[old]
        if node[0]=='INTERCONNECT':
            for i in [1,2]:
                if '/' in node[i]:
                    cell,pin=node[i].rsplit('/',1)
                    old=cell.replace('\\','')
                    if old not in instance_map: raise ValueError('Unmatched interconnect instance '+old)
                    node[i]=instance_map[old]+'/'+pin
                else:
                    node[i]=maps.get(node[i],node[i])
        for child in node:
            if isinstance(child,list):visit(child)
    visit(root)
    args.output_sdf.write_text(prepare_sdf.render(root)+'\n')
    print(json.dumps({'renamed_port_bits':len(maps),'output_aliases':output_aliases,'renamed_cell_instances':len(instance_map),'cell_types_or_connections_modified':0,'delays_modified':0,'port_mapping':maps},indent=2))
if __name__=='__main__':main()
