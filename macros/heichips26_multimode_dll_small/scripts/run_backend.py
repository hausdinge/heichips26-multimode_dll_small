#!/usr/bin/env python3
"""Run the flat flow, with one oscillator fence and scoped controller CTS."""
import os
from pathlib import Path
import shlex
import subprocess
import sys
from decimal import Decimal
from build_paths import validate_tag

try:
    import librelane
except ModuleNotFoundError:
    if os.environ.get('SMALL_DLL_IN_LIBRELANE'):
        raise SystemExit('LibreLane Python package is unavailable in the selected runtime')
    env = os.environ.copy()
    for key in ('PYTHONHOME', 'PYTHONPATH', 'PYTHONEXECUTABLE', '__PYVENV_LAUNCHER__', 'VERILATOR_ROOT', 'GHDL_PREFIX'):
        env.pop(key, None)
    env['SMALL_DLL_IN_LIBRELANE'] = '1'
    env.setdefault('APPIMAGE_EXTRACT_AND_RUN', '1')
    launcher = shlex.split(env.get('LIBRELANE_LAUNCHER', 'librelane'))
    os.execvpe(launcher[0], [*launcher, 'python3', str(Path(__file__).resolve()), *sys.argv[1:]], env)

from librelane.steps import Step
from librelane.steps.odb import OdbpyStep
from librelane.steps.openroad import CTS
from librelane.flows import Flow
from librelane.flows.classic import Classic
from librelane.config import Variable
from librelane.common import get_script_dir

@Step.factory.register()
class RingRegion(OdbpyStep):
    id = 'SmallDLL.RingRegion'
    name = 'Constrain oscillator placement'
    config_vars = OdbpyStep.config_vars + [
        Variable('DLL_RING_REGION', list[Decimal], 'Oscillator fence in microns.', default=[105, 20, 195, 90]),
    ]

    def get_script_path(self):
        return str(Path(__file__).with_name('ring_region.py'))

    def get_command(self):
        return super().get_command() + ['--region', ','.join(str(v) for v in self.config['DLL_RING_REGION'])]

@Step.factory.register()
class ControllerCTS(CTS):
    id = 'SmallDLL.ControllerCTS'
    name = 'Build controller clock trees'

    def get_script_path(self):
        text = (Path(get_script_dir()) / 'openroad/cts.tcl').read_text()
        replacements = {
            'repair_clock_inverters': '# Explicit waveform inverters remain unchanged.',
            'log_cmd clock_tree_synthesis {*}$arg_list':
                'log_cmd clock_tree_synthesis {*}$arg_list -clk_nets {u_dll/controller_ring_clk u_dll/controller_ref_clk}',
            'repair_clock_nets -max_wire_length $::env(CTS_CLK_MAX_WIRE_LENGTH)':
                '# Waveform branches retain their explicitly selected cells.',
        }
        for old, new in replacements.items():
            if text.count(old) != 1:
                raise RuntimeError('Unsupported LibreLane CTS script')
            text = text.replace(old, new)
        target = Path(self.step_dir) / 'controller_cts.tcl'
        target.write_text(text)
        return str(target)

@Flow.factory.register()
class SmallDLLFlow(Classic):
    name = 'SmallDLLFlow'
    Steps = Classic.Steps.copy()
    Steps.insert(next(i for i, s in enumerate(Steps) if s.id == 'OpenROAD.GlobalPlacementSkipIO'), RingRegion)

if __name__ == '__main__':
    args = sys.argv[1:]
    if args and args[0] == '--tool':
        raise SystemExit(subprocess.run(args[1:]).returncode)
    configs = [Path(s).resolve() for s in args if s.endswith(('.yaml', '.json')) and Path(s).is_file()]
    if configs and '--force-run-dir' not in args:
        root = configs[0].parents[2]
        if '--last-run' in args:
            tag = validate_tag((root / 'build/last_successful_run').read_text().strip())
            args.remove('--last-run')
            args += ['--run-tag', tag]
        elif '--run-tag' in args:
            tag = validate_tag(args[args.index('--run-tag') + 1])
        else:
            raise SystemExit('Specify --run-tag for a new build')
        run = root / 'build' / tag / 'librelane'
        run.mkdir(parents=True, exist_ok=True)
        args += ['--force-run-dir', str(run)]
    from librelane.__main__ import cli
    cli(args=args)
