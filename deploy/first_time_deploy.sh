#!/bin/bash

image_name='web-scraper-api'  
ecr_uri_base='282742299657.dkr.ecr.us-east-1.amazonaws.com'

. deploy/1_aws_login.sh

# Uncomment this step if you haven't created an ecr repo for the project yet
# echo "Creating new ECR repo: $image_name"
# aws ecr create-repository --repository-name $image_name --image-scanning-configuration scanOnPush=true

echo 'Saving zappa_settings'
zappa save-python-settings-file $image_name -o zappa_settings.py

. deploy/2_build_image.sh $image_name

. deploy/3_push_image.sh $image_name $ecr_uri_base

# If you get an IAM error here, just rerun this step. Sometimes zappa tries to use the role before it is done creating
echo 'Deploying to lambda'
zappa deploy $image_name -d $ecr_uri_base/$image_name:latest

# NEED TO FIGURE OUT WHEN LAMBDA RESTARTS OR HOW TO RESTART MANUALLY
# new image isnt being used immediately