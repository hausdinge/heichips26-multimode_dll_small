"""Annotation errors must not leave a zero-delay oscillator running indefinitely."""
from pathlib import Path
import sys
import tempfile
import time
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'scripts'))
from run_verilog import execute_simulation


class RunnerTests(unittest.TestCase):
    def test_annotation_error_stops_process(self):
        with tempfile.TemporaryDirectory() as directory:
            log = Path(directory) / 'simulation.log'
            started = time.monotonic()
            command = [sys.executable, '-u', '-c',
                       'import time; print("SDF WARNING: missing timing file"); time.sleep(60)']
            with self.assertRaisesRegex(RuntimeError, 'SDF WARNING'):
                execute_simulation(command, log, timeout=3)
            self.assertLess(time.monotonic() - started, 2)

    def test_host_timeout_stops_stalled_simulator(self):
        with tempfile.TemporaryDirectory() as directory:
            command = [sys.executable, '-c', 'import time; time.sleep(60)']
            with self.assertRaisesRegex(RuntimeError, 'Simulation failed'):
                execute_simulation(command, Path(directory) / 'simulation.log', timeout=0.1)


if __name__ == '__main__':
    unittest.main()
