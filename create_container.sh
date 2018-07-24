#!/bin/sh
if [ -n "$1" ]; then
    sudo -u root nvidia-docker run  -d --name "$1" -v /vdc/lotus.jzx/data:/workspace/facial-landmark/data --net=host -it jinlo/tf:build bash && sudo nvidia-docker attach "$1"
else
    echo "Usage: create-container [container-name]"
fi
