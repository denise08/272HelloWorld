# helloworld.py
import requests
from flask import Flask

app = Flask(__name__)

# this route should make it so that any path works
@app.route('/', defaults={'path': ''}, methods=['GET', 'POST'])
@app.route('/<path:path>', methods=['GET', 'POST'])
def helloworld(path):
    hello_url = "http://192.168.49.2:30007/hello"
    world_url = "http://192.168.49.2:30008/world"

    output = []
    for url in (hello_url, world_url):
        r = requests.get(f"{url}")
        output.append(r.text)

    return ' '.join(output)

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
