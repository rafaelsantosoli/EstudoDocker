# Utilizando banco de dados Postgres no docker

## Criando container do Postgres

Para criar o container do Postgres, execute o comando abaixo:

```bash

docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres

```

## Criando banco de dados

Vamos utilizar docker compose para criar e configurar o banco de dados Postgres.

Crie um arquivo chamado docker-compose.yml com o conteúdo abaixo:

```yml

# Utilizando banco de dados Postgres no docker

version: '3.3'

services: #serviços que serão utilizados
  db: #nome do serviço
    image: postgres #imagem que será utilizada
    restart: always #sempre que reiniciar o docker, o serviço será reiniciado
    env_file: #arquivo de variáveis de ambiente
      - ./config/db.env #arquivo de variáveis de ambiente
    ports:
      - 5432:5432 #porta que será utilizada
    networks: #redes que serão utilizadas
      - backend #nome da rede interna      

volumes: #volumes que serão utilizados
  db-data: {} #nome do volume

networks: #redes que serão utilizadas  
  backend: #nome da rede interna
    name: postgres #nome da rede externa
    driver: bridge #driver da rede

```

Crie um arquivo chamado db.env com o conteúdo abaixo:

```env

# Configurações do POSTGRES
POSTGRES_USER=postgres # Usuário que será criado para acessar o MySQL
POSTGRES_PASSWORD=postgres # Senha do usuário que será criado para acessar o MySQL
POSTGRES_DB=postgres # Nome do banco de dados que será criado no MySQL
POSTGRES_VOLUME=postgres-data # Nome do volume que será criado para persistir os dados do MySQL

```

Execute o comando abaixo para criar o container do Postgres:

```bash

docker-compose up -d

```

## Acessando o banco de dados Postgres no host com DBeaver

Para acessar o banco de dados Postgres no host com DBeaver, execute os passos abaixo:

1. Clique em New Database Connection
2. Selecione PostgreSQL
3. Clique em Next
4. Preencha os campos conforme abaixo:
   1. Host: localhost
   2. Port: 5432
   3. Database: postgres
   4. Username: postgres
   5. Password: postgres
5. Clique em Test Connection
6. Clique em Finish



## Conectando no banco de dados Postgres com Protheus

Para conectar no banco de dados Postgres com Protheus, execute os passos abaixo:

1. Abra o arquivo `C:\totvs12\Protheus_DataServer\bin\tds.ini`
2. Adicione as linhas abaixo:

```ini

[POSTGRES]
Driver=PostgreSQL Unicode
Server=localhost
Port=5432
Database=postgres
User=postgres
Password=postgres
ReadOnly=0
Charset=WIN1252
TimeZone=America/Sao_Paulo
ReadOnly=0
Charset=WIN1252
TimeZone=America/Sao_Paulo

```

## Restaurando backup do banco de dados Postgres

Para restaurar backup do banco de dados Postgres, execute os passos abaixo:

1. Abra o arquivo `C:\totvs12\Protheus_DataServer\bin\tds.ini`
2. Adicione as linhas abaixo:

```ini

[POSTGRES]
Driver=PostgreSQL Unicode

```

3. Abra o CMD
4. Execute o comando abaixo:

```bash

cd C:\totvs12\Protheus_DataServer\bin
tds.exe -restore -db postgres -file "C:\Users\Public\Documents\Totvs\Protheus\12.1.27\DataServer\postgres\postgres.bkp"

```

## Restaurando backup do banco de dados Postgres no docker

Para restaurar backup do banco de dados Postgres no docker, execute os passos abaixo:

1. Abra o CMD
2. Execute o comando abaixo:

```bash

docker exec -i postgres psql -U postgres < "C:\Users\Public\Documents\Totvs\Protheus\12.1.27\DataServer\postgres\postgres.bkp"

```

