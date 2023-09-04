import flask
from flask import request, json, jsonify
import requests
import flask_mysqldb
from flask_mysqldb import MySQL


app = flask.Flask(__name__)
app.config["DEBUG"] = True

app.config['MYSQL_HOST'] = 'mysql_api_container'
app.config['MySQL_USER'] = 'root'
app.config['MySQL_PASSWORD'] = ''
app.config['MySQL_DB'] = 'flaskdocker'

mysql = MySQL(app)

@app.route('/', methods=['GET'])
def index():
    data = requests.get('http://randomuser.me/api')
    return data.json()

@app.route('/nome', methods=['GET'])
def nome():
    data = requests.get('http://randomuser.me/api')
    return data.json()['results'][0]['name']['first']

@app.route('/inserthost', methods=['POST'])
def inserthost():
    data = request.get('http://randomuser.me/api').json()
    username = data.json()['results'][0]['name']['first']

    #cur = mysql.connection.cursor()
    #cur.execute("""INSERT INTO users (name) VALUES (%s)""", (username,))
    #mysql.connection.commit()
    #cur.close()
    return username

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port="5000")
