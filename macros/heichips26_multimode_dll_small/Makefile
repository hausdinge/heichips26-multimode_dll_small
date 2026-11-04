SHELL := /bin/bash
ROOT := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
PROJECT_ROOT := $(abspath $(ROOT)/../..)
TOP := heichips26_multimode_dll_small
PDK_ROOT ?= $(PROJECT_ROOT)/IHP-Open-PDK
PDK ?= ihp-sg13cmos5l
PYTHON ?= python3
SIM_PYTHON ?= $(PYTHON)
REPORT_PYTHON ?= $(SIM_PYTHON)
SIM_RUNTIME := env -u PYTHONHOME -u PYTHONPATH -u PYTHONEXECUTABLE -u __PYVENV_LAUNCHER__
NGSPICE ?= ngspice
APPIMAGE_EXTRACT_AND_RUN ?= 1
JOBS ?= 4
ifndef BUILD_TAG
BUILD_TAG := RUN_$(shell date -u +%Y%m%d_%H%M%S)
endif
RUN_TAG ?= $(shell cat build/last_successful_run 2>/dev/null || echo local)
RUN_DIR = build/$(RUN_TAG)
BACKEND = $(PYTHON) scripts/run_backend.py
FLOW_ARGS ?=
VERILOG_ARGS ?=
SPICE_ARGS ?=
export PDK_ROOT PDK RUN_TAG NGSPICE APPIMAGE_EXTRACT_AND_RUN
.DEFAULT_GOAL := help

help: ## List project commands
	@awk 'BEGIN {FS=":.*## "} /^[a-zA-Z0-9_-]+:.*## / {printf "  %-26s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

librelane: ## Place and route the complete flat design in the fixed tiny template
	$(PYTHON) scripts/manage_outputs.py snapshot --run-tag $(BUILD_TAG)
	$(BACKEND) flow/librelane/config.yaml --pdk $(PDK) --pdk-root "$(PDK_ROOT)" --manual-pdk --run-tag $(BUILD_TAG) --save-views-to build/$(BUILD_TAG)/views $(FLOW_ARGS)
	$(MAKE) check-physical RUN_TAG=$(BUILD_TAG)
	$(MAKE) check-structure RUN_TAG=$(BUILD_TAG)
	$(PYTHON) scripts/manage_outputs.py success --run-tag $(BUILD_TAG)

build-top: librelane ## Build, verify physical views and publish final files
	$(PYTHON) scripts/manage_outputs.py publish --run-tag $(BUILD_TAG)

check-physical: ## Check DRC/LVS/timing/electrical metrics, template pins, region and supplies
	$(PYTHON) scripts/check_physical_metrics.py $(RUN_DIR)/views/metrics.json --output $(RUN_DIR)/verification/physical_summary.json
	$(BACKEND) --tool openroad -exit -python scripts/check_layout.py --odb $(RUN_DIR)/views/odb/$(TOP).odb --template flow/librelane/heichips26_template_tiny_analog.def --output $(RUN_DIR)/verification/layout.json
	$(PYTHON) scripts/check_reset_electrical.py

check-structure: ## Verify explicit waveform cell types and wiring after routing
	$(PYTHON) scripts/run_structure_check.py

publish-manifest: check-structure ## Publish checked views and hashes of completed verification
	$(PYTHON) scripts/manage_outputs.py publish
copy-final copy-netlist: publish-manifest

librelane-openroad: ## Open the latest successful run in OpenROAD
	$(BACKEND) flow/librelane/config.yaml --pdk $(PDK) --pdk-root "$(PDK_ROOT)" --manual-pdk --last-run --flow OpenInOpenROAD
librelane-klayout: ## Open the latest successful run in KLayout
	$(BACKEND) flow/librelane/config.yaml --pdk $(PDK) --pdk-root "$(PDK_ROOT)" --manual-pdk --last-run --flow OpenInKLayout

lint-verilog: ## Compile and elaborate the functional top-level sources
	$(PYTHON) scripts/run_verilog.py --mode lint $(VERILOG_ARGS)
sim-rtl-verilog: ## Test FLL behavior, division, reset and relative output phase
	$(PYTHON) scripts/run_verilog.py --mode rtl $(VERILOG_ARGS)
sim-gl-verilog: ## Simulate the routed gates with physical SDF
	$(PYTHON) scripts/run_verilog.py --mode gl $(VERILOG_ARGS)
sim-divider-verilog: ## Sweep both dividers and their common startup epoch
	$(PYTHON) scripts/run_verilog.py --mode divider $(VERILOG_ARGS)
sim-spice-ring: ## Characterize the actual oscillator cells with reset startup
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/run_spice.py --jobs $(JOBS) $(SPICE_ARGS)
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_spice_results.py --scope schematic
sim-spice-transitions: ## Test live trim changes with extracted transistor RC
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/run_spice.py --routed --no-extract --transitions --jobs $(JOBS) $(SPICE_ARGS)
sim-spice-routed: ## Characterize the oscillator with routed parasitics
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/run_spice.py --routed --jobs $(JOBS) $(SPICE_ARGS)
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_spice_results.py --scope routed
sim-spice-fine: ## Check routed endpoints at half the transient time step
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/run_spice.py --routed --no-extract --fine --jobs $(JOBS)
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_spice_results.py --scope routed_fine
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_spice_convergence.py
sim-spice-finer: ## Run an optional quarter-step endpoint diagnostic
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/run_spice.py --routed --no-extract --finer --jobs $(JOBS) $(SPICE_ARGS)
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_spice_results.py --scope routed_finer
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_spice_convergence.py
update-frequency-model: ## Refresh the functional model from the current TT SPICE sweep
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_spice_results.py --scope routed
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/run_spice.py --update-model
report-images: ## Generate diagrams and plots from the selected completed run
	$(SIM_RUNTIME) $(REPORT_PYTHON) scripts/report.py

test-measurements: ## Test rejection of truncated traces, runt pulses and missing cycles
	$(SIM_RUNTIME) $(SIM_PYTHON) -B -m unittest discover -s testbenches/python -v
capture-waveforms: ## Capture settled RTL and SDF windows after passing full regressions
	$(PYTHON) scripts/capture_waveforms.py --mode rtl
	$(PYTHON) scripts/capture_waveforms.py --mode gl
publish-report: ## Copy generated, reviewed report figures into the documentation
	$(SIM_RUNTIME) $(REPORT_PYTHON) scripts/report.py --publish
sim-all: ## Run all suites and calibrate the functional model from routed SPICE
	$(PYTHON) scripts/run_regressions.py
check-qualification: ## Verify coverage and freshness of all completed suites
	$(SIM_RUNTIME) $(SIM_PYTHON) scripts/check_qualification.py
verify: build-top ## Build and run the complete verification suites
	$(MAKE) sim-all RUN_TAG=$(BUILD_TAG)
	$(MAKE) check-qualification RUN_TAG=$(BUILD_TAG)
	$(MAKE) publish-manifest RUN_TAG=$(BUILD_TAG)
clean: ## Remove ignored build data; preserve sources, figures and final views
	$(PYTHON) scripts/manage_outputs.py clean
clean-sim: ## Remove only the selected run's simulation data
	$(PYTHON) scripts/manage_outputs.py clean-sim
.PHONY: help librelane build-top check-physical publish-manifest copy-final copy-netlist librelane-openroad librelane-klayout lint-verilog sim-rtl-verilog sim-gl-verilog sim-divider-verilog sim-spice-ring sim-spice-routed update-frequency-model report-images sim-all verify clean clean-sim

.PHONY: check-structure sim-spice-transitions

.PHONY: test-measurements capture-waveforms

.PHONY: sim-spice-fine

.PHONY: publish-report

.PHONY: check-qualification

.PHONY: sim-spice-finer
