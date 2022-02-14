from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def index():
    return jsonify(status=200, message='OK')

@app.route('/asdf')
def asdf():
    return jsonify(status=200, message='asdf')

@app.route('/something')
def something():
    return jsonify(status=200, message='something')

@app.route('/newnew')
def newnew():
    return jsonify(status=200, message='newnew')