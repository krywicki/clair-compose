#!/bin/sh
#
# This performs clair-scan on target image

IMAGE=$1

# Run on MAC
if [[ -f "clair-scanner-mac" ]]; then
    IP_ADDR=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2)
    docker-compose up -d
    ./clair-scanner-mac --ip $IP_ADDR $IMAGE
    docker-compose down

# Run on Linux
elif [[ -f "clair-scanner-linux" ]]; then
    docker-compose up -d
    ./clair-scanner-linux $IMAGE
    docker-compose down

# Could not identify distribution
else echo "Could not locate clair-scanner executable. Make sure it's downloaded"
fi
