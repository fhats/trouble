from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return "Hello!"

@app.route("/services")
def list_services():
    return "hi"

@app.route("/incidents")
def list_incidents():
    return "things"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
