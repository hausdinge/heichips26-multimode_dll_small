#!/usr/bin/env python3
"""Reject incomplete physical signoff and timing/electrical violations.

LibreLane can complete with residual antenna or fanout violations. Published
views must pass this check as well as the flow's own checks.
"""
import argparse
import hashlib
import json
from pathlib import Path

CORNERS = ('nom_fast_1p32V_m40C', 'nom_typ_1p20V_25C', 'nom_slow_1p08V_125C')
PHYSICAL_COUNTS = (
    'route__drc_errors', 'magic__drc_error__count', 'klayout__drc_error__count',
    'magic__illegal_overlap__count', 'design__lvs_error__count',
    'antenna__violating__nets', 'antenna__violating__pins',
)
ELECTRICAL_COUNTS = tuple(
    f'design__max_{kind}_violation__count{suffix}'
    for kind in ('slew', 'cap', 'fanout')
    for suffix in ('', *(f'__corner:{corner}' for corner in CORNERS))
)


def check_metrics(metrics):
    errors = []
    for key in (*PHYSICAL_COUNTS, *ELECTRICAL_COUNTS):
        if key not in metrics or metrics[key] != 0:
            errors.append(f'{key}: {metrics.get(key, "missing")}')
    for corner in CORNERS:
        for kind in ('setup', 'hold'):
            key = f'timing__{kind}__ws__corner:{corner}'
            if key not in metrics or metrics[key] < 0:
                errors.append(f'{key}: {metrics.get(key, "missing")}')
    return {
        'passed': not errors,
        'errors': errors,
        'physical_counts': {key: metrics.get(key) for key in PHYSICAL_COUNTS},
        'electrical_counts': {key: metrics.get(key) for key in ELECTRICAL_COUNTS},
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('metrics', type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    raw = args.metrics.read_bytes()
    result = check_metrics(json.loads(raw))
    result['metrics_sha256'] = hashlib.sha256(raw).hexdigest()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=4) + '\n')
    print('PHYSICAL_CHECK_' + ('PASS' if result['passed'] else 'FAIL'),
          '; '.join(result['errors']))
    raise SystemExit(not result['passed'])


if __name__ == '__main__':
    main()
