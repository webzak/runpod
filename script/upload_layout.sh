#!/bin/bash
#parameter is remote name of layout

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rclone copy ${DIR}/../layouts/${1} ${2}:/workspace --create-empty-src-dirs
