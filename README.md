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

To run the clair-scanner, do the following steps.

1. Ensure that the target image exists, whether locally or remotely.

2. Start clair db resources with ```docker-compose```

    ```bash
    docker-compose up -d
    ```

3. Initiate scan on a target image.

    * This example uses ```alpine:3.5``` as the target image.

    ```bash
    ./clair-scanner alpine:3.5
    ```
