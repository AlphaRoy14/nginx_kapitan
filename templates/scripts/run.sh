#!/bin/bash -eu

{% set i = inventory.parameters %}
DIR=$(dirname ${BASH_SOURCE[0]})

echo "Running for target {{ i.target_name }}"
echo "Port mapping {{ i.docker.port }}:{{ i.nginx.port }}"
docker run --name docker-nginx-{{ i.target_name }} -p {{ i.docker.port }}:{{ i.nginx.port }}  -it -d -v $(pwd)/$DIR/manifests/html:{{ i.nginx.location.root }} -v $(pwd)/$DIR/manifests/nginx.conf:/etc/nginx/conf.d/default.conf nginx
