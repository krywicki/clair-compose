# Clair with Docker-Compose

This is a simple project that simplifies using ```clair``` vulnerability scanner by using
```docker-compose``` to run it.

## Setup

This section is how to install clair and associated tools.

**Requirements**
* Docker

Run clair appropriate downloader to install ```clair-scanner``` for your target OS.

* Mac

    ```bash
    ./mac-download-clair.sh
    ```
* Linux

    ```bash
    TODO
    ```
* Windows

    ```bash
    TODO
    ```


## Running Clair-Scanner

Run ```scan.sh``` on target image.

```bash
./scan.sh alpine:3.5
```
