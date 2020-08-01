
# A very simple Flask Hello World app for you to get started with...

from flask import Flask, redirect, render_template, request, url_for

import fusion


app = Flask(__name__)
app.config["DEBUG"] = True

boxes = 4


@app.route('/', methods=["GET"])
def index():
	demons = []
	fusionResults = []
	demonList = request.args.values()

	for i in demonList:
		demons.append(i)

	for row in fusion.multipleFusion(demons):
		fusionResults.append(row)

	return render_template("main_page.html", boxes = boxes, results=fusionResults)
	

app.run()