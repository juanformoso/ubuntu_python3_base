FROM ubuntu:18.04
LABEL maintainer="Juan Manuel Formoso <jformoso@gmail.com>"
LABEL project="ubuntu_python3_base"
LABEL description="Docker base image using ubuntu and python 3.6"

# 1) Python package management and basic dependencies
# 2) Register the version in alternatives
# 3) Set python 3 as the default python
# 4) Upgrade pip version
RUN apt-get update && apt-get install --no-install-recommends -y python3.6 python3.6-dev python3-pip python3-setuptools && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1 && \
    update-alternatives --set python /usr/bin/python3.6 && \
    python -m pip install --no-cache-dir pip --upgrade --force-reinstall && \
    apt-get clean
