from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def main():
    return render_template('index.html')

if __name__ == ("__main__"):
    #app.run('127.0.0.1','5000',debug=True)
    app.run('0.0.0.0','80',debug=True)