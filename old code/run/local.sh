#!/bin/bash

# cd ..
# dir=$(pwd)
# echo $dir
# if [ $dir -ne '/home/will/repos/web-scraper' ] then
#     echo 'Please navigate to /repos/web-scraper directory'
#     exit
# else
#     echo 'something'
# fi
name='web-scraper'

docker images -q $name
if [ $? -eq 0 ];
then
    docker container rm $name
fi

echo 'Logging in to AWS using env creds'
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 123456789012.dkr.ecr.us-east-1.amazonaws.com

echo "Building docker image: $name"
docker build -f Dockerfile.local -t $name .

echo 'Starting container'
docker run \
    --name $name \
    -p 8080:8080 \
    -v ~/.aws-lambda-rie:/aws-lambda \
    -v /:/src \
    --entrypoint /aws-lambda/aws-lambda-rie \
    $name #\
    # app npm run dev:watch