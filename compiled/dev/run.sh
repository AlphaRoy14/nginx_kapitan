#!/bin/bash -eu

DIR=$(dirname ${BASH_SOURCE[0]})

echo "Running for target dev"
echo "Port mapping 80:80"
docker run --name docker-nginx-dev -p 80:80  -it -d -v $(pwd)/$DIR/manifests/html:/usr/share/nginx/html -v $(pwd)/$DIR/manifests/nginx.conf:/etc/nginx/conf.d/default.conf nginx