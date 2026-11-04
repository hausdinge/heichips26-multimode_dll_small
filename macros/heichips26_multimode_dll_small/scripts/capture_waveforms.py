#!/usr/bin/env python3
"""Capture a settled report window using the same RTL / SDF test fixture."""
import argparse
import hashlib
import json
import os
from pathlib import Path
from build_paths import ROOT, run_dir
from run_verilog import execute

p = argparse.ArgumentParser()
p.add_argument("--mode", choices=["rtl", "gl"], required=True)
a = p.parse_args()
base = run_dir() / "simulation/verilog" / a.mode
summary = json.loads((base / "summary.json").read_text())
if not summary.get("passed"):
    raise ValueError("The complete regression must pass before report capture")
out = base.with_name(a.mode + "_wave")
out.mkdir(exist_ok=True)
cells = Path(os.environ["PDK_ROOT"]) / "ihp-sg13cmos5l/libs.ref/sg13cmos5l_stdcell/verilog"
sources = [cells / "sg13cmos5l_udp.v", cells / "sg13cmos5l_stdcell.v"]
sources += [base / "gates.v"] if a.mode == "gl" else [ROOT / "rtl/heichips26_multimode_dll_small.sv"]
sources += [ROOT / "testbenches/verilog/small_dll_tb.sv", ROOT / "testbenches/verilog/wave_capture.sv"]
execute(["iverilog", "-g2012", "-gspecify", "-ginterconnect", "-DGL" if a.mode == "gl" else "-DFUNCTIONAL",
         "-I" + str(ROOT / "rtl"), "-I" + str(ROOT / "testbenches/verilog"),
         "-s", "small_dll_tb", "-s", "wave_capture", "-o", str(out / "sim.vvp"),
         *map(str, sources)], out / "compile.log")
args = ["+SDF=" + str(base / "gates.sdf")] if a.mode == "gl" else []
for name, key in [('WARMUP_NS', 'warmup_ns'), ('MEASURE_NS', 'measure_ns'),
                  ('ACQUIRE_TIMEOUT_NS', 'acquire_timeout_ns'), ('WATCHDOG_NS', 'watchdog_ns')]:
    args.append(f'+{name}={summary[key]}')
args.append('+CAPTURE_NS=' + str(max(1, min(250, summary['measure_ns'] - 1))))
text = execute(["vvp", "-i", str(out / "sim.vvp"), *args], out / "simulation.log", out)
if "WAVEFORM_CAPTURE_COMPLETE" not in text or "SDF WARNING" in text or "SDF ERROR" in text:
    raise ValueError("Waveform capture failed")
(out / "provenance.json").write_text(json.dumps({"scope": "Report capture, not a replacement for the full regression",
    "regression_sha256": hashlib.sha256((base / "summary.json").read_bytes()).hexdigest(),
    "waveform_sha256": hashlib.sha256((out / "waveform.vcd").read_bytes()).hexdigest()}, indent=2) + "\n")
print(text)
