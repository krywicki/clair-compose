#!/bin/sh
#
# This performs clair-scan on target image

IMAGE=$1
SCANNER_VER=v12
EXTRA_ARGS=""

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Host: Mac OS"

    if [[ ! -f "clair-scanner" ]]; then
        echo "Downloading clair-scanner_darwin_amd64"
        curl -L "https://github.com/arminc/clair-scanner/releases/download/${SCANNER_VER}/clair-scanner_darwin_amd64" -o "clair-scanner"
        chmod +x "./clair-scanner"
        echo "Download complete!"
    fi

    EXTRA_ARGS="--ip $(hostname)"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Host: Linux-GNU"
    if [[ ! -f "clair-scanner" ]]; then
        echo "Downloading clair-scanner_linux_amd64"
        curl -L "https://github.com/arminc/clair-scanner/releases/download/${SCANNER_VER}/clair-scanner_linux_amd64" -o "clair-scanner"
        chmod +x "./clair-scanner"
        echo "Download complete!"
    fi

    EXTRA_ARGS="--ip $(hostname)"
else
    $(exit unsupported os type: $OSTYPE)
fi

docker-compose up -d
./clair-scanner $EXTRA_ARGS $IMAGE
docker-compose down
