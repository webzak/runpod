#!/bin/bash
#parameter is remote name runpod, rploc..

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rclone copy ${DIR}/../layouts/base ${1}:/workspace/ --create-empty-src-dirs
