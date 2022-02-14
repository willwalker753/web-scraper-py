#!/bin/bash

image_name = $0

echo "Building image tagged as $image_name:latest"
docker build -t $image_name:latest -f Dockerfile.deploy . 