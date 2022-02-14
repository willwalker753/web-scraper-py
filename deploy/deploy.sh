#!/bin/bash

image_name='web-scraper-api'  
ecr_uri_base='282742299657.dkr.ecr.us-east-1.amazonaws.com'

. deploy/1_aws_login.sh
. deploy/2_build_image.sh $image_name
. deploy/3_push_image.sh $image_name $ecr_uri_base

# NEED TO FIGURE OUT WHEN LAMBDA RESTARTS OR HOW TO RESTART MANUALLY
# new image isnt being used immediately