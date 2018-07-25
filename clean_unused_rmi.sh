IMAGES=`sudo nvidia-docker images --filter "dangling=true" -q --no-trunc`
if [ -n "$IMAGES" ]; then
	sudo nvidia-docker rmi "$IMAGES"
else
        echo nothing to clean
fi
