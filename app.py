
# A very simple Flask Hello World app for you to get started with...

from flask import Flask, redirect, render_template, request, url_for

import fusion


app = Flask(__name__)
app.config["DEBUG"] = True




@app.route('/', methods=["GET"])
def index():

	results = []
	demons = []
	result = request.args.values()
	for i in result:
		demons.append(i)

	for row in fusion.multipleFusion(demons):
		results.append(row)

	return render_template("main_page.html", results=results)
	


app.run()