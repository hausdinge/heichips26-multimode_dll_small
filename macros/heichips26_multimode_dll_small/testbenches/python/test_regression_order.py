"""Ensure full verification uses the freshly calibrated model and clean runtimes."""
import contextlib
import io
import json
import os
from pathlib import Path
import runpy
import sys
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[2]


class RegressionOrderTests(unittest.TestCase):
    def run_suite(self, failing_target=None):
        with tempfile.TemporaryDirectory() as directory:
            run = Path(directory)
            calls = []

            def execute(command, **kwargs):
                calls.append((command[1], kwargs['env'].copy()))
                return SimpleNamespace(returncode=int(command[1] == failing_target))

            with patch.dict(sys.modules, {'build_paths': SimpleNamespace(run_dir=lambda: run)}), \
                    patch('subprocess.run', side_effect=execute), \
                    patch.dict(os.environ, {'PYTHONHOME': '/must-not-leak'}), \
                    contextlib.redirect_stdout(io.StringIO()):
                with self.assertRaises(SystemExit) as result:
                    runpy.run_path(str(ROOT / 'scripts/run_regressions.py'), run_name='__main__')
            summary = json.loads((run / 'verification/regression/summary.json').read_text())
            return result.exception.code, calls, summary

    def test_calibration_precedes_both_functional_suites(self):
        code, calls, summary = self.run_suite()
        targets = [name for name, env in calls]
        self.assertEqual(code, 0)
        self.assertTrue(summary['passed'])
        for target in ('sim-divider-verilog', 'sim-rtl-verilog'):
            self.assertLess(targets.index('update-frequency-model'), targets.index(target))
        self.assertTrue(all('PYTHONHOME' not in env for name, env in calls))

    def test_failed_calibration_blocks_stale_functional_results(self):
        code, calls, summary = self.run_suite('update-frequency-model')
        self.assertEqual(code, 1)
        self.assertFalse(summary['passed'])
        targets = [name for name, env in calls]
        for target in ('sim-divider-verilog', 'sim-rtl-verilog'):
            self.assertNotIn(target, targets)
            result = next(item for item in summary['results'] if item['target'] == target)
            self.assertEqual(result['status'], 'blocked')
        self.assertIn('sim-gl-verilog', targets)


if __name__ == '__main__':
    unittest.main()
