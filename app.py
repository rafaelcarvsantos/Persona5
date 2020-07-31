
# A very simple Flask Hello World app for you to get started with...

from flask import Flask, redirect, render_template, request, url_for

import fusion

for row in fusion.simpleFusion('Pixie','Mandrake'):
	print(row)
app = Flask(__name__)
app.config["DEBUG"] = True



results = []

@app.route('/', methods=["GET", "POST"])
def index():
    if request.method == "GET":
        return render_template("main_page.html", results=results)
    for row in fusion.simpleFusion(request.form["demon1"],request.form["demon2"]):
    	results.append(row)
    
    return redirect(url_for('index'))
app.run()