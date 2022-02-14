from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def index():
    return jsonify(status=200, message='OK')

@app.route('/asdf')
def asdf():
    return jsonify(status=200, message='asdf')

# def lambda_handler(event, context):
#     return awsgi.response(app, event, context, base64_content_types={"image/png"})