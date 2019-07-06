#!/bin/bash
set -euo pipefail

docker pull gcr.io/oneoff-project/sliderule-confluence:latest
docker stop sliderule
docker rm sliderule
docker run -d --name sliderule --restart always --network=nginx-net gcr.io/oneoff-project/sliderule-confluence:latest
