#!/usr/bin/env python3
"""Generate curated diagrams and plots from a completed local build."""
import argparse
import hashlib
import shutil
import json
import os
from pathlib import Path
import subprocess
import sys
import numpy as np
from build_paths import ROOT, TOP, run_dir
os.environ.setdefault("MPLCONFIGDIR", str(run_dir() / "report_cache"))
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

COLORS = ["#146e92", "#ce7625", "#427b46"]
plt.rcParams.update({"font.size": 10, "axes.spines.top": False, "axes.spines.right": False,
                     "figure.facecolor": "white", "axes.grid": True, "grid.alpha": 0.18})


def save(fig, target):
    fig.savefig(target, dpi=160, bbox_inches="tight", facecolor="white")
    plt.close(fig)


def read_vcd(path, names):
    codes = {}
    samples = {name: ([], []) for name in names}
    time = 0
    scale = 0.001
    for line in path.read_text().splitlines():
        fields = line.split()
        if not fields:
            continue
        if fields[0] == "$var" and fields[4] in names:
            codes[fields[3]] = fields[4]
        elif fields[0].startswith("#"):
            time = int(fields[0][1:]) * scale
        elif fields[0][0] in "01xz" and fields[0][1:] in codes:
            name = codes[fields[0][1:]]
            samples[name][0].append(time)
            samples[name][1].append(float(fields[0][0]) if fields[0][0] in "01" else np.nan)
    return samples


def main():
    run = run_dir()
    parser = argparse.ArgumentParser()
    parser.add_argument("--publish", action="store_true", help="Publish the previously generated and reviewed figures")
    args = parser.parse_args()
    img = run / "documentation/img"
    img.mkdir(parents=True, exist_ok=True)
    if args.publish:
        provenance = json.loads((img / "provenance.json").read_text())
        required = {"architecture.png", "placement.png", "gl_waveform.png", "rtl_waveform.png",
                    "routed_frequency.png", "routed_startup.png", "trim_transition.png"}
        if provenance["run_tag"] != run.name or not required <= set(provenance["outputs_sha256"]):
            raise ValueError("The complete report must be generated before publication")
        for name, expected in provenance["sources_sha256"].items():
            if hashlib.sha256((ROOT / name).read_bytes()).hexdigest() != expected:
                raise ValueError("Report source changed: " + name)
        destination = ROOT / "img"
        destination.mkdir(exist_ok=True)
        for name, expected in provenance["outputs_sha256"].items():
            source = img / name
            if hashlib.sha256(source.read_bytes()).hexdigest() != expected:
                raise ValueError("Report image changed: " + name)
            shutil.copy2(source, destination / name)
        shutil.copy2(img / "provenance.json", destination / "provenance.json")
        print("Published reviewed figures:", destination)
        return
    for stale in img.iterdir():
        if stale.suffix in (".png", ".svg") or stale.name == "provenance.json":
            stale.unlink()
    sources = {}

    def record(path):
        sources[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()

    diagram = r'''digraph architecture {
        graph [rankdir=TB, bgcolor="white", pad="0.25", nodesep="0.4", ranksep="0.65"];
        node [shape=box, style="rounded,filled", fillcolor="#ecf4f8", color="#146e92", fontname="sans-serif"];
        edge [color="#35576a", fontname="sans-serif", fontsize=10];
        ref [label="Reference clock"];
        fll [label="Frequency controller\nmultiplier 1–31"];
        ring [label="13-stage tunable ring\nordinary standard cells", fillcolor="#fff2e3", color="#ce7625"];
        start [label="Common reset / startup"];
        div0 [label="Output divider 0\n0 bypass · 1 stop · 2–31 divide"];
        div1 [label="Output divider 1\n0 bypass · 1 stop · 2–31 divide"];
        out0 [label="Clock 0\nanalog_0 + uo_out[0]"];
        out1 [label="Clock 1\nanalog_1 + uo_out[1]"];
        ref -> fll;
        fll:s -> ring:n [label="Trim"];
        ring:e -> fll:e [label="Frequency\nfeedback", constraint=false];
        ring -> start;
        ring -> div0;
        ring -> div1;
        start -> div0 [style=dashed, label="shared epoch"];
        start -> div1 [style=dashed];
        div0 -> out0;
        div1 -> out1;
    }'''
    subprocess.run(["dot", "-Tsvg", "-o", str(img / "architecture.svg")], input=diagram,
                   text=True, check=True)
    subprocess.run(["dot", "-Tpng", "-Gdpi=150", "-o", str(img / "architecture.png")],
                   input=diagram, text=True, check=True)

    placement = run / "verification/placement.json"
    subprocess.run([sys.executable, str(ROOT / "scripts/run_backend.py"), "--tool", "openroad",
                    "-exit", "-python", str(ROOT / "scripts/export_placement.py"),
                    str(run / f"views/odb/{TOP}.odb"), str(placement)], check=True,
                   stdout=subprocess.DEVNULL)
    record(placement)
    record(run / f"views/odb/{TOP}.odb")
    record(ROOT / "scripts/export_placement.py")
    data = json.loads(placement.read_text())
    fig, ax = plt.subplots(figsize=(7, 6))
    for cell in data["cells"]:
        x0, y0, x1, y1 = cell["box"]
        ax.add_patch(Rectangle((x0, y0), x1-x0, y1-y0, linewidth=0,
                              facecolor=COLORS[1] if cell["ring"] else "#a8bac4"))
    x0, y0, x1, y1 = data["oscillator_region"]
    ax.add_patch(Rectangle((x0, y0), x1-x0, y1-y0, fill=False, edgecolor="#993f06", linewidth=1.5))
    ax.text((x0+x1)/2, y1+4, "Oscillator placement fence", ha="center", color="#993f06", fontsize=9)
    ax.set(xlim=(0, 200), ylim=(0, 200), xlabel="x (µm)", ylabel="y (µm)",
           title="Flat placement in the fixed 200 × 200 µm template")
    ax.set_aspect("equal")
    save(fig, img / "placement.png")

    for scope in ("schematic", "routed"):
        path = run / f"simulation/ngspice/{scope}/summary.json"
        if not path.is_file():
            continue
        data = json.loads(path.read_text())
        if not data.get("passed"):
            continue
        record(path)
        fig, ax = plt.subplots(figsize=(7, 4))
        for corner, color in zip(("tt", "ss", "ff"), COLORS):
            points = sorted((r for r in data["results"] if r["corner"]["name"] == corner),
                            key=lambda r: r["level"])
            if points:
                ax.plot([r["level"] for r in points], [r["frequency_mhz"] for r in points],
                        ".-" if len(points) > 2 else "o", color=color,
                        label=corner.upper() + (" (endpoints)" if len(points) == 2 else ""))
        ax.axhline(200, linestyle=":", color="#555", linewidth=1, label="200 MHz")
        ax.set(xlabel="Trim code", ylabel="Frequency (MHz)", title=f"{scope.capitalize()} SPICE · 20 fF output load")
        ax.legend()
        save(fig, img / f"{scope}_frequency.png")
        wave = path.parent / "tt_trim00/waveform.dat"
        if wave.is_file():
            record(wave)
            samples = np.loadtxt(wave, skiprows=1)
            fig, ax = plt.subplots(figsize=(8, 3))
            ax.plot(samples[:, 0]*1e9, samples[:, 1], color=COLORS[0], linewidth=1)
            ax.axvline(10, linestyle="--", color=COLORS[1], label="Reset released")
            ax.set(xlim=(0, 50), xlabel="Time (ns)", ylabel="Output (V)", title=f"{scope.capitalize()} SPICE · reset startup, TT trim 0")
            ax.legend(loc="upper left")
            save(fig, img / f"{scope}_startup.png")

    transitions = run / "simulation/ngspice/routed_transitions/summary.json"
    if transitions.is_file() and json.loads(transitions.read_text()).get("passed"):
        record(transitions)
        trace = transitions.parent / "tt_trim00_01_10ns/waveform.dat"
        cfg_path = transitions.parent / "config.json"
        record(trace)
        record(cfg_path)
        cfg = json.loads(cfg_path.read_text())
        samples = np.loadtxt(trace, skiprows=1)
        start = cfg["reset_ns"] + cfg["warmup_ns"]
        times = samples[:, 0] * 1e9
        select = (times >= start) & (times <= start + 70)
        fig, axes = plt.subplots(2, 1, figsize=(8, 4), sharex=True)
        requests = np.arange(start, start + 81, 10)
        axes[0].step(requests, np.arange(len(requests)) % 2, where="post", color=COLORS[1])
        axes[0].set(ylabel="Requested trim", yticks=[0, 1], ylim=(-0.2, 1.2),
                    title="Routed SPICE · adjacent trim requests every 10 ns")
        axes[1].plot(times[select], samples[select, 1], color=COLORS[0])
        axes[1].set(xlim=(start, start + 70), xlabel="Time (ns)", ylabel="Output (V)")
        save(fig, img / "trim_transition.png")

    for scope in ("rtl", "gl"):
        wave = run / f"simulation/verilog/{scope}_wave/waveform.vcd"
        if not wave.is_file():
            continue
        record(wave)
        signals = read_vcd(wave, ["clk", "analog_0", "analog_1"])
        start = min(ts[0] for ts, values in signals.values() if ts)
        fig, axes = plt.subplots(3, 1, figsize=(8, 4), sharex=True)
        for ax, (name, (ts, values)), color in zip(axes, signals.items(), COLORS):
            ax.step(np.array(ts)-start, values, where="post", color=color)
            ax.set(ylim=(-0.2, 1.2), yticks=[0, 1], ylabel=name, xlim=(0, 100))
        axes[-1].set_xlabel("Time from settled capture start (ns)")
        axes[0].set_title(("Routed SDF" if scope == "gl" else "Functional RTL") + " · 100 MHz reference, output bypass / ÷3")
        save(fig, img / f"{scope}_waveform.png")
    record(Path(__file__))
    (img / "provenance.json").write_text(json.dumps({"run_tag": run.name, "sources_sha256": sources,
        "outputs_sha256": {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in img.iterdir()
                           if p.suffix in (".png", ".svg")}}, indent=2)+"\n")
    print("Report images:", img)

if __name__ == "__main__":
    main()
