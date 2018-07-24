#!/bin/sh
if [ -n "$1" ]; then
    sudo -u root nvidia-docker run  -d --name "$1"  --net=host -it nvidia/cuda bash
else
    echo "Usage: create-container [container-name]"
fi
