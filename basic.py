from flask import Flask ,render_template

app = Flask(__name__)                               # for create app

@app.route("/")                                     # for site url path
def hellow():                                       # function for printing any thing in page
    return "hellow world"

@app.route("/pk")
def pk():
    return "hellow pk !"

@app.route("/temp")
def temp():
    id = "pradhuman kumar"                          # using variable in function
    return render_template("index_basic.html" , name=id)

@app.route("/bootstrape")
def boota():
    return render_template("bootstrape_basic.html")


app.run(debug=True)                                 # for run the site