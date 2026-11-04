#!/usr/bin/env python3
"""Check electrical limits with reset and common startup release allowed to switch."""
import json
import os
from pathlib import Path
import re
import subprocess
import sys

from build_paths import ROOT, TOP, run_dir
from manage_outputs import digest

CORNERS = ('typ_1p20V_25C', 'slow_1p08V_125C', 'fast_1p32V_m40C')
CATEGORIES = ('max_fanout', 'max_capacitance', 'max_slew')


def main():
    run = run_dir()
    out = run / 'verification/reset_electrical'
    out.mkdir(parents=True, exist_ok=True)
    pdk = Path(os.environ.get('PDK_ROOT', ROOT.parents[1] / 'IHP-Open-PDK'))
    libraries = pdk / 'ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/lib'
    netlist = run / f'views/nl/{TOP}.nl.v'
    spef = run / f'views/spef/nom/{TOP}.nom.spef'
    sdc = ROOT / 'flow/librelane/timing_common.tcl'
    sources = [Path(__file__), ROOT / 'scripts/run_backend.py', netlist, spef, sdc]
    sources += [libraries / f'sg13cmos5l_stdcell_{corner}.lib' for corner in CORNERS]
    hashes = {str(path.resolve()): digest(path) for path in sources}
    results = []
    failures = []
    for corner in CORNERS:
        library = libraries / f'sg13cmos5l_stdcell_{corner}.lib'
        script = out / (corner + '.tcl')
        log = out / (corner + '.log')
        commands = [f'read_liberty {{{library}}}', f'read_verilog {{{netlist}}}',
                    f'link_design {TOP}', f'read_spef {{{spef}}}', f'source {{{sdc}}}',
                    'unset_case_analysis [all_inputs]',
                    'unset_case_analysis [state_q u_dll/run_resetb]',
                    'set_input_transition 0.15 [get_ports {rst_n ena}]']
        for category in CATEGORIES:
            commands += [f'puts AUDIT_BEGIN_{category}',
                         f'report_check_types -{category} -violators -digits 5',
                         f'puts AUDIT_END_{category}']
        commands.append('puts ELECTRICAL_AUDIT_COMPLETED')
        script.write_text('if {[catch {\n' + '\n'.join(commands) +
                          '\n} reason]} {puts stderr $reason; exit 2}\nexit\n')
        with log.open('w') as stream:
            process = subprocess.run([sys.executable, str(ROOT / 'scripts/run_backend.py'),
                                      '--tool', 'sta', str(script)], stdout=stream,
                                     stderr=subprocess.STDOUT)
        text = log.read_text()
        violations = {}
        complete = process.returncode == 0 and 'ELECTRICAL_AUDIT_COMPLETED' in text
        for category in CATEGORIES:
            match = re.search(rf'AUDIT_BEGIN_{category}\n(.*?)AUDIT_END_{category}', text, re.S)
            complete = complete and match is not None
            violations[category] = [line.strip() for line in match[1].splitlines()
                                    if '(VIOLATED)' in line] if match else ['Missing report']
        passed = complete and not re.search(r'(^|\n)Error:', text) and not any(violations.values())
        results.append({'corner': corner, 'passed': passed, 'violations': violations,
                        'log_sha256': digest(log)})
        if not passed:
            failures.append(corner)
        print(corner, 'reset electrical audit:', 'PASS' if passed else 'FAIL', flush=True)
    if hashes != {str(path.resolve()): digest(path) for path in sources}:
        failures.append('Inputs changed while checking')
    summary = {'passed': not failures, 'scope': 'All electrical paths with external reset, enable and common startup release unconstrained by case analysis',
               'input_sha256': hashes, 'results': results, 'failures': failures}
    (out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    return 1 if failures else 0


if __name__ == '__main__':
    raise SystemExit(main())
