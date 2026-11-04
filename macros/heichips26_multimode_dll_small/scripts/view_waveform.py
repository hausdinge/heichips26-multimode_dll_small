#!/usr/bin/env python3
"""View a generated ngspice voltage trace, or save a plot without a display."""
import argparse
from pathlib import Path
import numpy as np

parser = argparse.ArgumentParser()
parser.add_argument('waveform', type=Path)
parser.add_argument('--start-ns', type=float)
parser.add_argument('--stop-ns', type=float)
parser.add_argument('--save', type=Path)
args = parser.parse_args()
import matplotlib
if args.save:
    matplotlib.use('Agg')
import matplotlib.pyplot as plt

samples = np.loadtxt(args.waveform, skiprows=1)
fig, ax = plt.subplots(figsize=(10, 4))
ax.plot(samples[:, 0] * 1e9, samples[:, 1], linewidth=1)
ax.set(xlabel='Time (ns)', ylabel='Output voltage (V)', title=args.waveform.parent.name)
ax.set_xlim(args.start_ns, args.stop_ns)
ax.grid(alpha=0.25)
fig.tight_layout()
if args.save:
    args.save.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(args.save, dpi=160)
else:
    plt.show()
