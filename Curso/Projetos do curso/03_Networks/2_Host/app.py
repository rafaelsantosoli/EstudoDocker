import flask
from flask import request, json, jsonify
import requests
import flask_mysqldb
from flask_mysqldb import MySQL


app = flask.Flask(__name__)
app.config["DEBUG"] = True

app.config['MYSQL_HOST'] = 'host.docker.internal'
app.config['MySQL_USER'] = 'root'
app.config['MySQL_PASSWORD'] = ''
app.config['MySQL_DB'] = 'flaskhost'

mysql = MySQL(app)


@app.route('/', methods=['GET'])
def index():
    data = requests.get('http://randomuser.me/api')
    return data.json()

@app.route('/inserthost', methods=['POST'])
def inserthost():
    data = request.get('http://randomuser.me/api').json()
    username = data['results'][0]['name']['first']

    cur = mysql.connection.cursor()
    cur.execute("INSERT INTO host (name) VALUES (%s)", (username))
    mysql.connection.commit()
    cur.close()

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port="5000")
