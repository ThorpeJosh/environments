#!/bin/bash
set -e
#name for docker image
NAME="pytorch1.7_cuda11.0_jupyterlab"
docker build -t $NAME .
