from flask import Flask

import requests

url = "https://tasty.p.rapidapi.com/recipes/list"

querystring = {"from":"0","size":"20","tags":"under_30_minutes"}

headers = {
	"X-RapidAPI-Key": "7478f14f65msh230d78cb411f25cp1ff3cajsnacc103b463b8",
	"X-RapidAPI-Host": "tasty.p.rapidapi.com"
}

response = requests.request("GET", url, headers=headers, params=querystring)

app = Flask(__name__)

@app.route('/')
def index():
    return (response.text)

app.run(host='0.0.0.0', port=5000)