#!/bin/bash

echo 'Logging into ECR with AWS env creds'
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 282742299657.dkr.ecr.us-east-1.amazonaws.com