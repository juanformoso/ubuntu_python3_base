![Docker Pulls](https://img.shields.io/docker/pulls/juanformoso/ubuntu_python3_base.svg)

### Summary

Docker base image using ubuntu with python 3.6, used in all my other containers

Docker image hosted in https://hub.docker.com/r/juanformoso/

### Getting the image

    docker pull juanformoso/ubuntu_python3_base

### Usage

This image is not meant to be used by itself, but rather as a base image for other projects. It will leave a completely updated Ubuntu 18.04 server with python 3.6 and pip installed.

```
FROM juanformoso/ubuntu_python3_base

(...)
```