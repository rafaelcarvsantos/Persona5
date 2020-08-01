
# A very simple Flask Hello World app for you to get started with...

from flask import Flask, redirect, render_template, request, url_for

import fusion


app = Flask(__name__)
app.config["DEBUG"] = True



results = []
demons = []

@app.route('/', methods=["GET", "POST"])
def index():
    if request.method == "GET":
        return render_template("main_page.html", results=results)
    result = request.form.items()
    for i in result:
    	demons.append(i[1])
    for row in fusion.multipleFusion(demons):
    	results.append(row)
    return redirect(url_for('index'))
app.run()