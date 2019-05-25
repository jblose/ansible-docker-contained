#!/usr/bin/bash

docker_tag="ansible"

# Build
docker build -t ${docker_tag} .

# Stop any running and restart
docker stop $(docker ps | grep ${docker_tag} | tail -n 1 | awk '{ print $1 }')
docker run -dit --rm ${docker_tag}  


# Determine PTY
pty=""
unameOut="$(uname -s)"
case "${unameOut}" in
    MINGW*)     pty="winpty ";;
    *)          pty=""
esac

# Exec into Shell
${pty}  docker exec -it $(docker ps | grep ${docker_tag} | tail -n 1 | awk '{ print $1 }') sh