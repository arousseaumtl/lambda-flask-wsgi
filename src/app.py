from flask import Flask
from flask import jsonify

app = Flask(__name__)


@app.route("/test", methods=["GET"])
def test():
    return jsonify({"statusCode": 200, "body": "OK"})
