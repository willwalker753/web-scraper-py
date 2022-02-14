# startDir=$PWD
# cd $SCRIPTDIR
# cd ..
# cd $startDir
zappa save-python-settings-file web-scraper-api -o zappa_settings.py

docker build -t web-scraper-api:latest -f Dockerfile.lambda . 