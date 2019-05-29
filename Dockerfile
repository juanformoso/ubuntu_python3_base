FROM ubuntu:18.04
LABEL maintainer="Juan Manuel Formoso <jformoso@gmail.com>"
LABEL project="ubuntu_python3_base"
LABEL description="Docker base image using ubuntu and python 3.6"

# upgrade installed packages
RUN apt-get update && apt-get upgrade -y && apt-get clean

# python package management and basic dependencies
RUN apt-get install -y python3.6 python3.6-dev python3-pip

# Register the version in alternatives
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1

# Set python 3 as the default python
RUN update-alternatives --set python /usr/bin/python3.6

# Upgrade pip version
RUN python -m pip install pip --upgrade --force-reinstall
