#!/bin/sh


IMAGE="jinlo/tf:build"
if [ -n "$1" ]; then
    container_id=`sudo nvidia-docker ps -a --filter NAME=^/"$1"$  -q`
    
    if [ -n "$container_id" ]; then
        echo "Find existed container $container_id, attach it"
        sudo nvidia-docker start "$1" && sudo nvidia-docker exec -i -t "$1" bash
    else
        echo "Create new container $1"
        sudo nvidia-docker run  -d --name "$1" -v /vdc/lotus.jzx/data:/workspace/facial-landmark/data --net=host -it "$IMAGE"  bash && sudo nvidia-docker attach "$1"
    fi
else
    echo "Usage: use-container [container-name]"
fi
