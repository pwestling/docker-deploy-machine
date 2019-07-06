#!/bin/bash
set -euo pipefail

IMAGE=$1
NAME=$2
ADD_ARGS=${ARGS:-}
shift
shift

docker pull $IMAGE
docker stop $NAME || true
docker rm $NAME || true
docker run -d --name $NAME $@ --restart always --network=nginx-net $IMAGE $ADD_ARGS
