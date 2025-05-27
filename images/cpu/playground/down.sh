#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

. ${DIR}/env.sh

docker-compose -f ${DIR}/docker-compose.yml down && echo "Stopped"
