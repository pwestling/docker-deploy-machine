#/bin/bash

docker stop nginx
docker run \
  -v nginx-certs:/etc/letsencrypt \
  -e http_proxy=$http_proxy \
  -e domains="$1" \
  -e email="pwestling@gmail.com" \
  -p 80:80 \
  -p 443:443 \
  --rm pierreprinetti/certbot:latest
docker start nginx
