# Clair with Docker-Compose

This is a simple project that simplifies using ```clair``` vulnerability scanner by using
```docker-compose``` to run it.

## Running

**Ensure you have the follwing already installed**
* Docker
* Docker-Compose

Make sure the docker images are present either using ```docker build``` or ```docker pull```.

To scan an image, simply run ```./scan.sh <image>```.
Here's an example of scanning ```alpine:3.5```:

```bash
./scan.sh alpine:3.5
```
