#!/bin/bash
# !! The file must be sourced, not executed


# Check if a parameter is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <host:port>"
  return 1
fi

# Extract host and port from the parameter
host_port=$1
IFS=':' read -r host port <<< "$host_port"

# Check if host and port were successfully extracted
if [ -z "$host" ] || [ -z "$port" ]; then
  echo "Invalid host:port format"
  return 1
fi

export RUNPOD_HOST="${host}"
export RUNPOD_PORT="${port}"
export RCLONE_CONFIG="${HOME}/.config/rclone/runpod.conf"