#!/bin/sh
echo Build jinlo/tf:build
sudo nvidia-docker build -t jinlo/tf:build  . -f Dockerfile.build
