#!/bin/bash
# !! The file must be sourced, not executed

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/env.sh" "$1"
"$SCRIPT_DIR/configure.sh"



