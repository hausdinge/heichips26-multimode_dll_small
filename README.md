# HeiChips26 small standard-cell clock generator

This project implements a compact frequency-locked loop with one reference
clock, a programmable multiplier and two independently divided output clocks.
Both outputs come from the same oscillator and start from a shared counter
epoch. Their phase is not locked to the reference.

The whole design is implemented as flat standard cells in the fixed **200 × 200 µm
tiny analog template**. There are **no nested hard macros, tri-state cells,
dedicated delay-gate cells, input divider, phase selectors or external ring taps**.

The [design report](macros/heichips26_multimode_dll_small/README.md) describes
configuration, the circuit, physical results, SPICE/SDF tests and waveforms.

## Build

Activate your installed tools and the project environment:

```sh
source /path/to/oss-cad-suite/environment
source ./env.sh
make clone-pdk
make build-top BUILD_TAG=my_run
```

Alternatively use the repository's Nix environment. `PDK_ROOT` can select an
existing installation of the same SG13CMOS5L PDK. All project source and output
paths are relative to this checkout. The build runs synthesis, placement,
routing, timing, DRC/LVS and physical checks, then publishes integration views.
It does not run the longer transistor/SDF regressions automatically.

```sh
make librelane-openroad
make librelane-klayout
make precheck
```

SPICE needs OSDI-enabled ngspice, the PDK's OpenVAF models and NumPy.
Figure generation additionally needs Matplotlib. Select those tools once and
run the verification against the completed physical build:

```sh
export SIM_PYTHON=/path/to/python-with-numpy
export NGSPICE=/path/to/ngspice
make -C macros/heichips26_multimode_dll_small sim-all RUN_TAG=my_run
make -C macros/heichips26_multimode_dll_small check-qualification publish-manifest RUN_TAG=my_run
```

## Files

- `macros/heichips26_multimode_dll_small/rtl/`: complete flat RTL.
- `scripts/` inside that design: physical, simulation and checking helpers.
- `testbenches/` inside that design: Verilog fixtures and SPICE sweep settings.
- `build/`: ignored generated runs, reports, extraction and simulation evidence.
- `final/` inside that design: versioned fabrication/integration views.
- `submission.yaml`: tiny-slot submission configuration for Kevin Klein and Nils Kissner.

The top-level precheck also writes under `build/precheck/`; CI runs it on pushes
and pull requests. `make clean` in the design directory preserves RTL,
testbenches, documentation images and published `final/` views.
