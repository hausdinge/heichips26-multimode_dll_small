"""Prepare a checked Icarus-compatible SDF while retaining nonzero wire delays.

Compile with -gspecify -ginterconnect. Keep unconditional IOPATH and all nonzero
INTERCONNECT delays. Remove zero wire entries (Icarus cannot annotate vector
port interconnects reliably), timing checks (checked independently by STA), and
conditional arcs only when an unconditional fallback is present. The original
SDF is never modified. This is a digital delay simulation, not transistor-level
oscillator characterization.
"""
import argparse
from collections import Counter
import json
from pathlib import Path
import re

def parse(text):
    tokens = re.findall(r'"(?:\\.|[^"\\])*"|[()]|[^\s()]+', text)
    stack, roots = [], []
    for token in tokens:
        if token == '(':
            node = []
            (stack[-1] if stack else roots).append(node)
            stack.append(node)
        elif token == ')':
            if not stack:
                raise ValueError('Unbalanced SDF closing parenthesis')
            stack.pop()
        else:
            if not stack:
                raise ValueError('Unexpected top-level SDF token')
            stack[-1].append(token)
    if stack or len(roots) != 1 or roots[0][0] != 'DELAYFILE':
        raise ValueError('Malformed SDF')
    return roots[0]

def arc_key(node):
    return json.dumps(node[1:3])

def render(node, indent=0):
    if node[0] == 'IOPATH':
        def inline(x):
            return '(' + ' '.join(inline(y) for y in x) + ')' if isinstance(x, list) else x
        return ' ' * indent + inline(node)
    if all(isinstance(x, str) for x in node):
        return ' ' * indent + '(' + ' '.join(node) + ')'
    head = []
    children = []
    for x in node:
        if isinstance(x, list):
            children.append(render(x, indent + 2))
        elif children:
            raise ValueError('Unexpected SDF atom following nested expression')
        else:
            head.append(x)
    return ' ' * indent + '(' + ' '.join(head) + '\n' + '\n'.join(children) + ')'

def convert(root):
    counts = Counter()
    def visit(node, instance=None):
        kind = node[0]
        if kind == 'CELL':
            entries = [x for x in node[1:] if isinstance(x, list) and x[0] == 'INSTANCE']
            instance = entries[0][1] if entries and len(entries[0]) > 1 else ''
        if kind in ('VOLTAGE', 'TEMPERATURE', 'TIMINGCHECK'):
            counts['removed_' + kind] += 1
            return None
        if kind == 'INTERCONNECT':
            nonzero = any(float(x) != 0 for value in node[3:] for triple in value for x in triple.split(':') if x)
            if nonzero:
                counts['retained_nonzero_INTERCONNECT'] += 1
                return node
            counts['removed_zero_INTERCONNECT'] += 1
            return None
        if kind == 'ABSOLUTE':
            arcs = {arc_key(x) for x in node[1:] if x[0] == 'IOPATH'}
            result = [kind]
            for child in node[1:]:
                if child[0] == 'COND':
                    nested = [x for x in child[1:] if isinstance(x, list) and x[0] == 'IOPATH']
                    if len(nested) != 1 or nested[0][0] != 'IOPATH' or arc_key(nested[0]) not in arcs:
                        raise ValueError('Conditional arc lacks unconditional fallback: ' + str(child))
                    counts['removed_COND_with_fallback'] += 1
                elif child[0] in ('IOPATH', 'INTERCONNECT'):
                    kept = visit(child, instance)
                    if kept:
                        result.append(kept)
                else:
                    raise ValueError('Unsupported SDF delay: ' + str(child[0]))
            return result if len(result) > 1 else None
        if kind == 'IOPATH':
            counts['retained_IOPATH'] += 1
            for value in node[3:]:
                if any(float(x) > 0 for triple in value for x in triple.split(':') if x):
                    counts['nonzero_IOPATH'] += 1
                    break
            return node
        result = []
        for x in node:
            kept = visit(x, instance) if isinstance(x, list) else x
            if kept is not None:
                result.append(kept)
        if kind == 'DELAY' and len(result) == 1:
            return None
        if kind == 'CELL' and not any(isinstance(x, list) and x[0] == 'DELAY' for x in result):
            counts['removed_empty_CELL'] += 1
            return None
        if kind == 'CELL':
            counts['retained_CELL'] += 1
        return result
    converted = visit(root)
    if not counts['retained_IOPATH'] or not counts['nonzero_IOPATH']:
        raise ValueError('No nonzero cell delays in SDF')
    return converted, counts

if __name__ == '__main__':
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('source', type=Path)
    p.add_argument('destination', type=Path)
    a = p.parse_args()
    tree, counts = convert(parse(a.source.read_text()))
    result = render(tree) + '\n'
    parse(result)
    a.destination.write_text(result)
    print(json.dumps(dict(counts), indent=2, sort_keys=True))
