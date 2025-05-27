#!/bin/bash

pwdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

DIR="${pwdir}/.."
rclone copy --config ~/.config/rclone/runpod.conf ${DIR}/secrets/rclone.conf runpod:/workspace/config