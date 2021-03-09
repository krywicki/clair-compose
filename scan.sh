#!/bin/sh
#
# This performs clair-scan on target image

IMAGE=$1
IP_ADDR=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2)

docker-compose up -d
./clair-scanner --ip $IP_ADDR $IMAGE
docker-compose down
