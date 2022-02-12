import sys
def handler(event, context):
    # return 'Hello from AWS Lambda using Python' + sys.version + '!'   
    print('RUNNING!!!')
    body = {
        "message": "Testing Testing.. this is the all new and improved web scraper",
        "input": event
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response