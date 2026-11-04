"""Check sweep coverage and rejection of unsuccessful simulator output."""
import json
from pathlib import Path
import sys
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
import run_spice


class SpiceRunnerTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.root = Path(self.temporary.name)
        self.run = self.root / 'build/test'
        self.config = json.loads((ROOT / 'testbenches/ngspice/oscillator.json').read_text())
        source = self.root / 'testbenches/ngspice'
        source.mkdir(parents=True)
        (source / 'oscillator.json').write_text(json.dumps(self.config))
        (source / 'spiceinit.template').write_text('setcs sourcepath = ( "@MODEL_DIR@" )\n')
        for scope in ('schematic', 'routed'):
            netlist = self.run / 'netlist/spice' / scope
            netlist.mkdir(parents=True)
            (netlist / 'manifest.json').write_text(json.dumps({'ports': ['clk_out', 'VDD', 'VSS']}))
        self.patches = [patch.object(run_spice, 'ROOT', self.root),
                        patch.object(run_spice, 'run_dir', return_value=self.run)]
        for item in self.patches:
            item.start()

    def tearDown(self):
        for item in reversed(self.patches):
            item.stop()
        self.temporary.cleanup()

    def schedule(self, *arguments):
        seen = []

        def simulation(corner, level, config, *args):
            seen.append((corner['name'], level, config['max_step_ps']))
            return {'case': f'{corner["name"]}_trim{level:02d}', 'corner': corner,
                    'level': level, 'frequency_mhz': 1000 - level}

        with patch.object(run_spice, 'simulate', side_effect=simulation), \
                patch.object(sys, 'argv', ['run_spice.py', '--no-extract', *arguments]):
            run_spice.main()
        return seen

    def test_schematic_checks_six_endpoints_at_ten_ps(self):
        seen = self.schedule()
        self.assertEqual({(corner, code) for corner, code, step in seen},
                         {(corner, code) for corner in ('tt', 'ss', 'ff') for code in (0, 39)})
        self.assertEqual({step for corner, code, step in seen}, {10})

    def test_routed_sweeps_all_nominal_trim_codes(self):
        seen = self.schedule('--routed')
        self.assertEqual(len(seen), 44)
        self.assertEqual({code for corner, code, step in seen if corner == 'tt'}, set(range(40)))
        self.assertEqual({step for corner, code, step in seen}, {20})

    def test_fine_sweep_halves_the_step(self):
        seen = self.schedule('--routed', '--fine')
        self.assertEqual(len(seen), 6)
        self.assertEqual({step for corner, code, step in seen}, {10})

    def test_finer_diagnostic_uses_five_ps(self):
        seen = self.schedule('--routed', '--finer')
        self.assertEqual(len(seen), 6)
        self.assertEqual({step for corner, code, step in seen}, {5})

    def test_full_pvt_covers_all_120_combinations(self):
        self.assertEqual(len(self.schedule('--routed', '--full-pvt')), 120)

    def test_fast_corner_step_is_refined_with_the_global_step(self):
        for arguments, expected in [(('--routed',), 10),
                                    (('--routed', '--fine'), 5),
                                    (('--routed', '--finer'), 2.5)]:
            with self.subTest(arguments=arguments):
                self.schedule(*arguments)
                suffix = '_finer' if '--finer' in arguments else '_fine' if '--fine' in arguments else ''
                config = json.loads((self.run / ('simulation/ngspice/routed' + suffix) / 'config.json').read_text())
                self.assertEqual(config['corner_max_step_ps']['ff'], expected)

    def test_transient_deck_uses_the_corner_step_cap(self):
        pdk = self.root / 'pdk'
        models = pdk / 'libs.tech/ngspice/osdi'
        models.mkdir(parents=True)
        for name in ('psp103', 'psp103_nqs'):
            (models / (name + '.osdi')).write_text('unit-test placeholder')
        config = {**self.config, 'max_step_ps': 10, 'corner_max_step_ps': {'ff': 5}}
        fast = next(c for c in config['corners'] if c['name'] == 'ff')

        def stop_after_deck(command, cwd, **kwargs):
            self.assertIn('tran 5p 290n 0 5p', (cwd / 'test.sp').read_text())
            (cwd / 'ngspice.log').write_text('test stops after inspecting generated deck\n')
            return SimpleNamespace(returncode=1)

        with patch.object(run_spice.subprocess, 'run', side_effect=stop_after_deck):
            with self.assertRaisesRegex(RuntimeError, 'ngspice failed'):
                run_spice.simulate(fast, 39, config, self.run / 'netlist/spice/routed',
                                   self.run / 'simulation', pdk, 'ngspice')

    def test_abort_at_requested_endpoint_is_a_failure(self):
        pdk = self.root / 'pdk'
        models = pdk / 'libs.tech/ngspice/osdi'
        models.mkdir(parents=True)
        for name in ('psp103', 'psp103_nqs'):
            (models / (name + '.osdi')).write_text('unit-test placeholder')
        netlist = self.run / 'netlist/spice/routed'
        out = self.run / 'simulation'

        def abort(command, cwd, **kwargs):
            (cwd / 'ngspice.log').write_text('run simulation(s) aborted\nngspice-42 done\n')
            (cwd / 'waveform.dat').write_text('time voltage\n0 0\n2.9e-7 0\n')
            return SimpleNamespace(returncode=0)

        with patch.object(run_spice.subprocess, 'run', side_effect=abort):
            with self.assertRaisesRegex(RuntimeError, 'ngspice failed'):
                run_spice.simulate(self.config['corners'][0], 0, self.config,
                                   netlist, out, pdk, 'ngspice')


if __name__ == '__main__':
    unittest.main()
