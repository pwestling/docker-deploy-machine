#!/bin/bash
set -euo pipefail

docker pull gcr.io/oneoff-project/bs2tts-frontend:latest
docker stop bs2tts-frontend || true
docker rm bs2tts-frontend || true
docker run -d --name bs2tts-frontend -e PORT=8080 --restart always --network=nginx-net gcr.io/oneoff-project/bs2tts-frontend:latest
