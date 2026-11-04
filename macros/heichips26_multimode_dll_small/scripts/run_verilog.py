#!/usr/bin/env python3
"""Compile and run reproducible RTL or physical-SDF regressions."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import threading
from build_paths import ROOT, TOP, run_dir

ANNOTATION_FAILURE = re.compile(r'SDF ERROR|SDF WARNING|VPI error|FATAL|ERROR:|TEST_FAIL')


def execute_simulation(command, log, cwd=None, timeout=3600):
    """Fail immediately on a rejected annotation, even if the ring cannot advance time."""
    with log.open('w') as handle:
        process = subprocess.Popen(command, cwd=cwd, stdout=subprocess.PIPE,
                                   stderr=subprocess.STDOUT, text=True, bufsize=1)
        timer = threading.Timer(timeout, process.kill)
        timer.daemon = True
        timer.start()
        failure = None
        try:
            for line in process.stdout:
                handle.write(line)
                handle.flush()
                if ANNOTATION_FAILURE.search(line):
                    failure = line.strip()
                    process.terminate()
                    break
            process.wait(timeout=10)
        finally:
            timer.cancel()
            if process.poll() is None:
                process.kill()
                process.wait()
            process.stdout.close()
    text = log.read_text()
    if process.returncode or failure:
        raise RuntimeError(f'Simulation failed: {log}\n{failure or text[-2500:]}')
    return text


def execute(command, log, cwd=None):
    if Path(command[0]).name == 'vvp':
        return execute_simulation(command, log, cwd)
    env = os.environ.copy()
    env.setdefault('APPIMAGE_EXTRACT_AND_RUN', '1')
    with log.open('w') as handle:
        result = subprocess.run(command, cwd=cwd, stdout=handle,
                                stderr=subprocess.STDOUT, timeout=3600, env=env)
    text = log.read_text()
    if result.returncode:
        raise RuntimeError(f'Command failed ({result.returncode}): {log}\n{text[-2500:]}')
    return text


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def q(path):
    value = str(path.resolve())
    if any(c in value for c in '{}\n'):
        raise ValueError('Unsupported Tcl path')
    return '{' + value + '}'


def run_suite(args, out):
    cells = Path(os.environ.get('PDK_ROOT', ROOT.parents[1] / 'IHP-Open-PDK')) / 'ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell'
    models = [cells / 'verilog/sg13cmos5l_udp.v', cells / 'verilog/sg13cmos5l_stdcell.v']
    top = 'divider_tb' if args.mode == 'divider' else 'small_dll_tb'
    tb = ROOT / 'testbenches/verilog' / (top + '.sv')
    sources = [] if args.mode == 'divider' else [ROOT / 'rtl' / (TOP + '.sv')]
    defines = ['-DFUNCTIONAL']
    plus = []
    inputs = [*models, tb, Path(__file__)]
    if args.mode == 'gl':
        views = run_dir() / 'views'
        netlist = views / f'nl/{TOP}.nl.v'
        spef = views / f'spef/nom/{TOP}.nom.spef'
        liberty = cells / 'lib/sg13cmos5l_stdcell_typ_1p20V_25C.lib'
        sdf = out / 'physical.sdf'
        script = out / 'generate_sdf.tcl'
        commands = [f'read_liberty {q(liberty)}', f'read_verilog {q(netlist)}',
                    f'link_design {TOP}', f'read_spef {q(spef)}',
                    'create_clock -name ref -period 10 [get_ports clk]',
                    'set_input_transition 0.15 [all_inputs]', 'set_load 0.006 [all_outputs]',
                    f'write_sdf -include_typ {q(sdf)}', 'puts SDF_GENERATED']
        script.write_text('if {[catch {\n' + '\n'.join(commands) + '\n} reason]} {puts stderr $reason;exit 2}\nexit\n')
        text = execute(['sta', '-exit', str(script)], out / 'sdf_generation.log')
        if 'SDF_GENERATED' not in text or re.search(r'^Error:', text, re.M):
            raise RuntimeError('SDF generation failed')
        prepare = ROOT / 'scripts/prepare_sdf.py'
        scalarize = ROOT / 'scripts/scalarize_sim.py'
        execute([sys.executable, str(prepare), str(sdf), str(out / 'icarus.sdf')], out / 'prepare.log')
        execute([sys.executable, str(scalarize), str(netlist), str(out / 'icarus.sdf'),
                 str(out / 'gates.v'), str(out / 'gates.sdf')], out / 'scalarize.log')
        sources = [out / 'gates.v']
        defines = ['-DGL']
        plus = ['+SDF=' + str(out / 'gates.sdf')]
        inputs += [netlist, spef, liberty, sdf, out / 'gates.v', out / 'gates.sdf', prepare, scalarize]
    else:
        inputs += list((ROOT / 'rtl').glob('*')) + list((ROOT / 'testbenches/verilog').glob('*.vh'))
    hashes = {str(p.relative_to(ROOT) if p.is_relative_to(ROOT) else p): digest(p) for p in inputs}
    command = ['iverilog', '-g2012', '-gspecify', '-ginterconnect', *defines,
               '-I' + str(ROOT / 'rtl'), '-I' + str(ROOT / 'testbenches/verilog'),
               '-s', top, '-o', str(out / 'sim.vvp'), *map(str, models + sources + [tb])]
    execute(command, out / 'compile.log')
    if args.mode == 'lint':
        return {'passed': True, 'status': 'complete', 'scope': 'Icarus elaboration of functional top',
                'inputs_sha256': hashes}
    plus += [f'+WARMUP_NS={args.warmup_ns}', f'+MEASURE_NS={args.measure_ns}',
             f'+ACQUIRE_TIMEOUT_NS={args.acquire_timeout_ns}', f'+WATCHDOG_NS={args.watchdog_ns}']
    text = execute(['vvp', '-i', str(out / 'sim.vvp'), *plus], out / 'simulation.log', out)
    if hashes != {str(p.relative_to(ROOT) if p.is_relative_to(ROOT) else p): digest(p) for p in inputs}:
        raise ValueError('Simulation inputs changed while the test was running')
    result = {'passed': 'TEST_PASS' in text, 'status': 'complete', 'mode': args.mode,
              'warmup_ns': args.warmup_ns, 'measure_ns': args.measure_ns,
              'acquire_timeout_ns': args.acquire_timeout_ns, 'watchdog_ns': args.watchdog_ns,
              'measurements': re.findall(r'^RESULT .+$', text, re.M),
              'scope': 'All-cell routed SDF' if args.mode == 'gl' else 'Functional RTL model',
              'inputs_sha256': hashes}
    print(text)
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--mode', choices=['rtl', 'gl', 'divider', 'lint'], required=True)
    parser.add_argument('--warmup-ns', type=int, default=10000)
    parser.add_argument('--measure-ns', type=int, default=100000)
    parser.add_argument('--acquire-timeout-ns', type=int, default=20000000)
    parser.add_argument('--watchdog-ns', type=int, default=150000000)
    args = parser.parse_args()
    if min(args.warmup_ns, args.measure_ns, args.acquire_timeout_ns, args.watchdog_ns) <= 0:
        parser.error('Simulation timing values must be positive')
    out = run_dir() / 'simulation/verilog' / args.mode
    out.mkdir(parents=True, exist_ok=True)
    summary = out / 'summary.json'
    summary.write_text(json.dumps({'passed': False, 'status': 'incomplete'}) + '\n')
    try:
        result = run_suite(args, out)
        summary.write_text(json.dumps(result, indent=2) + '\n')
        if not result['passed']:
            raise RuntimeError('Missing test completion marker')
    except Exception as exc:
        summary.write_text(json.dumps({'passed': False, 'status': 'failed', 'error': str(exc)}, indent=2) + '\n')
        raise


if __name__ == '__main__':
    main()
