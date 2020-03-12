#!/bin/bash -eu

DIR=$(dirname ${BASH_SOURCE[0]})

echo "Running for target prod"
echo "Port mapping 8080:80"
docker run --name docker-nginx-prod -p 8080:80  -it -d -v $(pwd)/$DIR/manifests/html:/usr/share/nginx/html -v $(pwd)/$DIR/manifests/nginx.conf:/etc/nginx/conf.d/default.conf nginx