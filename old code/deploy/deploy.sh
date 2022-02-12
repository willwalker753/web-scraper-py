#!/bin/bash

# sls deploy

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 123456789012.dkr.ecr.us-east-1.amazonaws.com


docker tag  hello-world:latest 123456789012.dkr.ecr.us-east-1.amazonaws.com/hello-world:latest
docker push 123456789012.dkr.ecr.us-east-1.amazonaws.com/hello-world:latest