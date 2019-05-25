#!/usr/bin/bash

docker_tag="ansible"
# Stop any running and restart
docker stop $(docker ps | grep ${docker_tag} | tail -n 1 | awk '{ print $1 }')
