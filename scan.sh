#!/bin/sh
#
# This performs clair-scan on target image

IMAGE=$1
LOG_FILE="scan.log"

# Run on MAC
if [[ -f "clair-scanner-mac" ]]; then
    IP_ADDR=$(ipconfig getifaddr en0)
    docker-compose up -d
    ./clair-scanner-mac --ip $IP_ADDR -l $LOG_FILE "$IMAGE"
    docker-compose down
# Could not identify distribution
else echo "Could not locate clair-scanner executable. Make sure it's downloaded"
fi
