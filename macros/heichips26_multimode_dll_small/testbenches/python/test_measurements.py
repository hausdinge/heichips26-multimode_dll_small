"""Regression checks for the pass/fail boundary of SPICE measurements."""
import json
from pathlib import Path
import sys
import tempfile
import unittest
import numpy as np

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'scripts'))
from run_spice import edges, measure, trim_mask, waveform


class MeasurementTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.path = Path(self.temporary.name) / 'waveform.dat'
        self.cfg = {'reset_ns': 10, 'warmup_ns': 80, 'max_step_ps': 10}
        self.corner = {'voltage': 1.2}
        self.time = np.arange(0, 290.005, 0.01)
        self.voltage = np.where((self.time % 10) < 5, 1.2, 0.0)

    def tearDown(self):
        self.temporary.cleanup()

    def write(self, time=None, voltage=None):
        np.savetxt(self.path, np.column_stack([
            (self.time if time is None else time) * 1e-9,
            self.voltage if voltage is None else voltage]), header='time v(clk_out)', comments='')

    def test_stable_100mhz_passes(self):
        self.write()
        result = measure(self.path, self.cfg, self.corner, 290)
        self.assertAlmostEqual(result['frequency_mhz'], 100, places=3)
        self.assertAlmostEqual(result['duty_pct'], 50, places=2)
        self.assertEqual(result['measurement_start_ns'], 90)

    def test_truncated_transient_fails(self):
        self.write(self.time[:-500], self.voltage[:-500])
        with self.assertRaisesRegex(ValueError, 'Incomplete'):
            waveform(self.path, 290, 10)

    def test_nonfinite_sample_fails(self):
        self.voltage[100] = np.nan
        self.write()
        with self.assertRaisesRegex(ValueError, 'nonfinite'):
            waveform(self.path, 290, 10)

    def test_nonmonotonic_time_fails(self):
        self.time[100] = self.time[99]
        self.write()
        with self.assertRaisesRegex(ValueError, 'nonmonotonic'):
            waveform(self.path, 290, 10)

    def test_stopped_oscillator_fails(self):
        self.write(voltage=np.zeros_like(self.time))
        with self.assertRaisesRegex(ValueError, 'five settled edges'):
            measure(self.path, self.cfg, self.corner, 290)

    def test_runt_pulse_fails(self):
        self.voltage[(self.time > 152) & (self.time < 152.4)] = 0
        self.write()
        with self.assertRaisesRegex(ValueError, 'pulse/period'):
            measure(self.path, self.cfg, self.corner, 290, True, [10, 10])

    def test_missing_cycle_fails(self):
        self.voltage[(self.time >= 150) & (self.time < 160)] = 0
        self.write()
        with self.assertRaisesRegex(ValueError, 'pulse/period'):
            measure(self.path, self.cfg, self.corner, 290, True, [10, 10])

    def test_duty_failure_detected(self):
        self.write(voltage=np.where((self.time % 10) < 2, 1.2, 0))
        with self.assertRaisesRegex(ValueError, 'duty cycle'):
            measure(self.path, self.cfg, self.corner, 290)

    def test_trim_changes_one_control_bit(self):
        values = [trim_mask(code) for code in range(40)]
        self.assertEqual(len(set(values)), 40)
        self.assertEqual(values[0], 0)
        self.assertEqual(values[-1], ((1 << 13) - 1) << 13)
        for before, after in zip(values, values[1:]):
            self.assertEqual((before ^ after).bit_count(), 1)


if __name__ == '__main__':
    unittest.main()
