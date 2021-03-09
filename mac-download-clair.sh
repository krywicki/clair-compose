#~/bin/sh

VERSION=v12
EXECUTABLE=clair-scanner_darwin_amd64

curl -L https://github.com/arminc/clair-scanner/releases/download/$VERSION/$EXECUTABLE -o "clair-scanner"
chmod +x "clair-scanner"
