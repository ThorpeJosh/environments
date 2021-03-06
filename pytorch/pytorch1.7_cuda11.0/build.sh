#!/bin/bash
set -e
# Name for docker image
NAME="pytorch1.7_cuda11.0"

# Get timezone of host machine and pass to builder
TZ=$(cat /etc/timezone)

# Build docker image using hosts USER, UID and TZ.
docker build --build-arg HOST_USER=$USER --build-arg HOST_UID=$UID --build-arg TZ=$TZ -t $NAME .
