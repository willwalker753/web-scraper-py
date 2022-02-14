

docker tag web-scraper-api:latest 282742299657.dkr.ecr.us-east-1.amazonaws.com/web-scraper-api:latest
docker push 282742299657.dkr.ecr.us-east-1.amazonaws.com/web-scraper-api:latest  

zappa deploy web-scraper-api -d 282742299657.dkr.ecr.us-east-1.amazonaws.com/web-scraper-api:latest