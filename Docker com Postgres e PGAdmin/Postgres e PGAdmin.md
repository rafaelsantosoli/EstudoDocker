# Postgres e PGAdmin com Docker

## Introdução

Vamos dois containers, um com o banco de dados Postgres e outro com o PGAdmin, que é uma ferramenta para gerenciar o banco de dados.

Será necessário criar uma rede para que os containers possam se comunicar.

Vamos utilizar o Docker Compose para facilitar a criação dos containers.

Iremos definir as configurações do banco de dados e do PGAdmin em arquivos de configuração.

## Criando arquivo de configuração do Postgres

Vamos criar um diretório para armazenar os arquivos de configuração

```bash

mkdir config

```

Vamos criar o arquivo de configuração do Postgres

```bash

touch config/postgres.env

```

Vamos definir as configurações do Postgres

```bash

# Configurações do POSTGRES
# Configurações do POSTGRES
POSTGRES_USER=postgres          # Usuário que será criado para acessar o postgres
POSTGRES_PASSWORD=postgres      # Senha do usuário que será criado para acessar o postgres
POSTGRES_DB=postgres            # Nome do banco de dados que será criado no postgres

```

## Criando arquivo de configuração do PGAdmin

Vamos criar o arquivo de configuração do PGAdmin

```bash

touch config/pgadmin.env

```

Vamos definir as configurações do PGAdmin

```bash

# Configurações do PGADMIN

PGADMIN_DEFAULT_EMAIL = admin@admin.com     # Email
PGADMIN_DEFAULT_PASSWORD = admin            # Password

```

## Criando o arquivo de configuração do Docker Compose

Vamos criar o arquivo de configuração do Docker Compose

```bash

touch docker-compose.yml

```

Vamos definir as configurações do Docker Compose

```yml


version: '3.7'

services:
  postgres:
    image: postgres:15.3-alpine
    container_name: postgres
    env_file:
      - ./config/postgres.env
    restart: always
    ports:
      - 5432:5432
    volumes:
      - /home/docker/postgres:/var/lib/postgresql/data
    networks:
      - postgres-network

  pgadmin:
    depends_on:
      - postgres
    image: dpage/pgadmin4:latest
    container_name: pgadmin
    env_file:
      - ./config/pgadmin.env    
    restart: always
    volumes:
      - pgadmin-data:/var/lib/pgadmin
    ports:
      - 15432:80    
    networks:
      - postgres-network

volumes:  
  pgadmin-data:

networks:
    postgres-network:
        driver: bridge
        
```
## Criando o volume para persistir os dados do Postgres

Vamos criar o volume para persistir os dados do Postgres

```bash

docker volume create postgres-data

```

## Criando o volume para persistir os dados do PGAdmin

Vamos criar o volume para persistir os dados do PGAdmin

```bash

docker volume create pgadmin-data

```


## Criando os containers

Vamos criar os containers

```bash

docker-compose up -d

```

## Acessando o PGAdmin

Acesse o PGAdmin no endereço http://localhost:5050

![PGAdmin](images/PGAdmin.png)




