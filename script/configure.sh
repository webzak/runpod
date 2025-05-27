#!/bin/bash

# You have to include generated ssh config: Include ~/.ssh/runpod_config


if [ -z "$RUNPOD_HOST" ] || [ -z "$RUNPOD_PORT" ]; then
  echo "Runpod connection environment is not configured. Run source env.sh host:port first"
  return 1
fi

# Create ssh config
ssh_config_file="$HOME/.ssh/runpod_config"

config_content="Host runpod
    User root
    Hostname $RUNPOD_HOST
    Port $RUNPOD_PORT
    StrictHostKeyChecking no
    UserKnownHostsFile /dev/null
"

echo "$config_content" > "$ssh_config_file"
if [ -f "$ssh_config_file" ]; then
  chmod 600 "$ssh_config_file"
else
  echo "Error: Failed to create the SSH configuration file."
  return 1
fi


config_content="[runpod]
user = root
type = sftp
host = $RUNPOD_HOST
port = $RUNPOD_PORT
shell_type = unix
key_file = ~/.ssh/id_rsa
"

echo "$config_content" > "$RCLONE_CONFIG"

if [ -f "$RCLONE_CONFIG" ]; then
  chmod 600 "$RCLONE_CONFIG"
else
  echo "Error: Failed to create the rclone configuration file."
  return 1
fi