#!/bin/bash

repo_name='web_scraper'

echo 'Logging in to AWS using env creds'
aws ecr get-login-password --region us-east-1

echo "Creating new ECR repo: $repo_name"
aws ecr create-repository --repository-name $repo_name --image-scanning-configuration scanOnPush=true --image-tag-mutability MUTABLE