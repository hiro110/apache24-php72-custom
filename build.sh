#!/usr/bin/env bash
# arg1: name of destination dockerhub
# arg2: dockerhub username
# arg3: dockerhub password

set -x -e

buildnumber=${4-$(date -u +"%y%m%d%H%M")}

# docker login -u "$2" -p "$3"

# build base images
docker build -q -t "$1"/apache24:php72-custom_"$buildnumber" .

# run container
# docker run -p 8080:80 --name apache24_"$buildnumber" "$1"/apache24:php72-custom_"$buildnumber"

# docker push to registory
# docker push "$1"/apache24:php72-custom_"$buildnumber"

# docker ps -a
# docker exec -it f2e67f02ebfb /bin/bash
# curl -D - -s  -o /dev/null  http://172.17.0.2:8080/

# docker logout
