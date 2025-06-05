#!/bin/bash

cat <<EOF >> "/root/.bashrc"
export RCLONE_CONFIG="/workspace/config/rclone.conf"
export UV_CACHE_DIR="/workspace/cache/uv"
export HF_HOME="/workspace/cache/hf"
EOF


if [[ ! -e "/workspace/wrk" ]]; then
    tar -xzf /comfyui_workspace.tar.gz -C /workspace
fi

