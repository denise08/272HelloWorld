# world.py
from flask import Flask

app = Flask(__name__)

@app.route("/world")
def hello():
    return "World"

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
