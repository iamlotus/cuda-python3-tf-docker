#!/bin/sh
if [ -n "$1" ]; then
    sudo -u root nvidia-docker run  -d --name "$1"  --net=host -it nvidia/cuda bash && sudo nvidia-docker attach "$1"
else
    echo "Usage: create-container [container-name]"
fi
