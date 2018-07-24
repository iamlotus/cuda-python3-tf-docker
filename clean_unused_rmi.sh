sudo nvidia-docker rmi $(sudo nvidia-docker images --filter "dangling=true" -q --no-trunc)
