#!/bin/bash

image_name = $0
ecr_uri_base = $0

echo "Tagging $image_name:latest as $ecr_uri_base/$image_name:latest"
docker tag $image_name:latest $ecr_uri_base/$image_name:latest

echo "Pushing $ecr_uri_base/$image_name:latest to ECR"
docker push $ecr_uri_base/$image_name:latest