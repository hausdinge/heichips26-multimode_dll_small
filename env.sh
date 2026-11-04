#!/usr/bin/env bash
# Source after the installed OSS CAD Suite environment.
export PDK_ROOT="${PDK_ROOT:-$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)/IHP-Open-PDK}"
export PDK="${PDK:-ihp-sg13cmos5l}"
