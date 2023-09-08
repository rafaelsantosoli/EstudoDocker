import flask
from flask import request, json, jsonify
import requests
import flask_mysqldb
from flask_mysqldb import MySQL

app = flask.Flask(__name__) # Instância da classe Flask
app.config["DEBUG"] = True # Debugar a aplicação

app.config['MYSQL_HOST'] = 'db' # Nome do container
app.config['MYSQL_USER'] = 'root' # Usuário do MySQL
app.config['MYSQL_PASSWORD'] = '' # Senha do MySQL
app.config['MYSQL_DB'] = 'flaskdocker' # Nome do banco de dados

mysql = MySQL(app)

@app.route("/", methods=["GET"])
def index():
  data = requests.get('https://randomuser.me/api')
  return data.json()

@app.route("/inserthost", methods=['POST'])
def inserthost():
  data = requests.get('https://randomuser.me/api').json()
  username = data['results'][0]['name']['first']

  cur = mysql.connection.cursor()
  cur.execute("""INSERT INTO users(name) VALUES(%s)""", (username,))
  mysql.connection.commit()
  cur.close()

  return username

if __name__ == "__main__": # Executa a aplicação
  app.run(host="0.0.0.0", debug=True, port="5000")