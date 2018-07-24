#!/bin/sh
echo Build jinlo/tf:build
# sudo nvidia-docker build --no-cache -t jinlo/tf:build  . -f Dockerfile.build
sudo nvidia-docker build -t jinlo/tf:build  . -f Dockerfile.build
