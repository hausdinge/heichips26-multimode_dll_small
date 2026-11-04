"""Resolve generated outputs beneath the current project's build directory."""
import os
import re
from pathlib import Path
ROOT = Path(__file__).resolve().parents[1]
TOP = "heichips26_multimode_dll_small"

def validate_tag(tag):
    if not re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9_.-]*", tag):
        raise ValueError(f"Invalid run tag: {tag!r}")
    return tag

def run_dir(root=ROOT, explicit=None):
    marker = Path(root) / "build/last_successful_run"
    tag = explicit or os.environ.get("RUN_TAG")
    if not tag:
        tag = marker.read_text().strip() if marker.is_file() else "local"
    return Path(root).resolve() / "build" / validate_tag(tag)
