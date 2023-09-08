# Introdução ao Docker Compose

## Índice

- [Introdução ao Docker Compose](#introdução-ao-docker-compose)
  - [Índice](#índice)
  - [O que é o Docker Compose?](#o-que-é-o-docker-compose)
  - [Instalação](#instalação)
    - [Linux (Ubuntu)](#linux-ubuntu)
  - [Comandos básicos](#comandos-básicos)
    - [docker-compose up](#docker-compose-up)
    - [docker-compose up -d](#docker-compose-up--d)
    - [docker-compose down](#docker-compose-down)
    - [docker-compose ps](#docker-compose-ps)
    - [docker-compose logs](#docker-compose-logs)
    - [docker-compose exec](#docker-compose-exec)
  - [Exemplo](#exemplo)
  - [Chaves](#chaves)
  - [Referências](#referências)

## O que é o Docker Compose?

O Docker Compose é uma ferramenta para definir e executar aplicativos Docker de vários contêineres. Com o Compose, você usa um arquivo YAML para configurar os serviços do seu aplicativo. Em seguida, com um único comando, você cria e inicia todos os serviços do seu aplicativo a partir da configuração.

Usando o Compose é possível configurar todos os serviços necessários para executar um aplicativo. Usando um único comando, você cria e inicia todos os serviços do seu aplicativo, de forma fácil e rápida.

Em projetos maiores, é comum que um aplicativo precise de vários contêineres. Por exemplo, um aplicativo da web pode usar um contêiner para o servidor web, um para o servidor de banco de dados e um para o servidor de back-end. O Docker Compose é usado para executar vários contêineres como um único serviço.

## Instalação

Para instalar o Docker Compose, basta seguir a documentação oficial: [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

### Linux (Ubuntu)

Para instalar o Docker Compose no Linux, basta executar o comando:

```bash

sudo curl -SL https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

```

Para verificar se o Docker Compose foi instalado corretamente, basta executar o comando `docker-compose --version`.

```bash

docker-compose --version

docker-compose version 2.0.0-rc.1, build 6e5e2f8b

```

## Comandos básicos

### docker-compose up

O comando `docker-compose up` é usado para criar e iniciar todos os contêineres de um serviço. Se os contêineres já existirem, o comando `docker-compose up` os iniciará.

### docker-compose up -d

O comando `docker-compose up -d` é usado para criar e iniciar todos os contêineres de um serviço em segundo plano. Se os contêineres já existirem, o comando `docker-compose up -d` os iniciará.

### docker-compose down

O comando `docker-compose down` é usado para parar e remover todos os contêineres de um serviço.

### docker-compose ps

O comando `docker-compose ps` é usado para listar os contêineres de um serviço.

### docker-compose logs

O comando `docker-compose logs` é usado para exibir os logs de um serviço.

### docker-compose exec

O comando `docker-compose exec` é usado para executar um comando em um contêiner de um serviço.

## Exemplo

Para exemplificar o uso do Docker Compose, vamos criar um arquivo `docker-compose.yml` para executar um aplicativo web em PHP com um servidor Nginx e um servidor MySQL.

```yaml

version: '3.7'

services:
  web:
    image: nginx:alpine
    container_name: web
    ports:
      - 80:80
    volumes:
      - ./src:/var/www/html
      - ./nginx/default.conf:/etc/nginx/conf.d/default.conf
    depends_on:
      - php
  php:
    image: php:7.4-fpm-alpine
    container_name: php
    volumes:
      - ./src:/var/www/html
  mysql:
    image: mysql:5.7
    container_name: mysql
    ports:
      - 3306:3306
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: app
      MYSQL_USER: app
      MYSQL_PASSWORD: app
    volumes:
      - ./mysql/data:/var/lib/mysql
```

O arquivo `docker-compose.yml` é composto por três serviços: `web`, `php` e `mysql`.

O serviço `web` é composto por um contêiner com a imagem `nginx:alpine`, que será executado na porta `80` e terá dois volumes: `./src:/var/www/html` e `./nginx/default.conf:/etc/nginx/conf.d/default.conf`. O primeiro volume é usado para mapear o diretório `./src` do host para o diretório `/var/www/html` do contêiner. O segundo volume é usado para mapear o arquivo `./nginx/default.conf` do host para o arquivo `/etc/nginx/conf.d/default.conf` do contêiner. O arquivo `default.conf` é usado para configurar o servidor Nginx.

O serviço `php` é composto por um contêiner com a imagem `php:7.4-fpm-alpine`, que terá um volume: `./src:/var/www/html`. O volume é usado para mapear o diretório `./src` do host para o diretório `/var/www/html` do contêiner.

O serviço `mysql` é composto por um contêiner com a imagem `mysql:5.7`, que será executado na porta `3306` e terá um volume: `./mysql/data:/var/lib/mysql`. O volume é usado para mapear o diretório `./mysql/data` do host para o diretório `/var/lib/mysql` do contêiner. O diretório `/var/lib/mysql` é usado para armazenar os dados do MySQL.

Para executar o aplicativo, basta executar o comando `docker-compose up -d` na pasta onde o arquivo `docker-compose.yml` está localizado.

```bash

$ docker-compose up -d

Creating network "docker-compose_default" with the default driver

Creating mysql ... done

Creating php   ... done

Creating web   ... done

```

Para verificar se os contêineres foram criados e estão em execução, basta executar o comando `docker-compose ps`.

```bash

$ docker-compose ps

     Name                   Command               State                 Ports

------------------------------------------------------------------------------------------

mysql            docker-entrypoint.sh mysqld      Up

php              docker-php-entrypoint php-fpm    Up      9000/tcp

web              /docker-entrypoint.sh ngin ...   Up

```

Para verificar os logs de um serviço, basta executar o comando `docker-compose logs <service>`. Por exemplo, para verificar os logs do serviço `web`, basta executar o comando `docker-compose logs web`.

```bash

$ docker-compose logs web

Attaching to web

web    | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration

web    | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/

web    | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh

web    | 10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf

web    | 10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf

web    | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh

web    | /docker-entrypoint.sh: Configuration complete; ready for start up

```

Para executar um comando em um contêiner de um serviço, basta executar o comando `docker-compose exec <service> <command>`. Por exemplo, para executar o comando `php -v` no contêiner do serviço `php`, basta executar o comando `docker-compose exec php php -v`.

```bash

$ docker-compose exec php php -v

PHP 7.4.12 (cli) (built: Oct 30 2020 15:03:26) ( NTS )

Copyright (c) 1994-2020 The PHP Group

Zend Engine v3.4.0, Copyright (c) 1994-2020 Zend

```

Para parar e remover todos os contêineres de um serviço, basta executar o comando `docker-compose down`.

```bash

$ docker-compose down

Stopping web   ... done

Stopping php   ... done

Stopping mysql ... done

Removing web   ... done

Removing php   ... done

Removing mysql ... done

Removing network docker-compose_default

```

## Chaves

As chaves mais importantes são:

- `version`: Versão do Compose que estamos utilizando.
- `services`: Lista de serviços que iremos utilizar.
- `Volumes`: Lista de volumes que iremos utilizar.
- `networks`: Lista de networks que iremos utilizar.
- `ports`: Lista de portas que iremos utilizar.
- `environment`: Lista de variáveis de ambiente que iremos utilizar.
- `depends_on`: Lista de serviços que dependem de outros serviços.
- `build`: Lista de serviços que dependem de outros serviços.
- `image`: Lista de serviços que dependem de outros serviços.
- `container_name`: Lista de serviços que dependem de outros serviços.
- `command`: Lista de serviços que dependem de outros serviços.
- `restart`: Lista de serviços que dependem de outros serviços.
- `volumes_from`: Lista de serviços que dependem de outros serviços.
- `links`: Lista de serviços que dependem de outros serviços.
- `network_mode`: Lista de serviços que dependem de outros serviços.
- `cap_add`: Lista de serviços que dependem de outros serviços.
- `cap_drop`: Lista de serviços que dependem de outros serviços.
- `dns`: Lista de serviços que dependem de outros serviços.
- `dns_search`: Lista de serviços que dependem de outros serviços.
- `tmpfs`: Lista de serviços que dependem de outros serviços.
- `extra_hosts`: Lista de serviços que dependem de outros serviços.
- `stdin_open`: Lista de serviços que dependem de outros serviços.
- `tty`: Lista de serviços que dependem de outros serviços.
- `cpu_shares`: Lista de serviços que dependem de outros serviços.
- `cpus`: Lista de serviços que dependem de outros serviços.
- `cpuset`: Lista de serviços que dependem de outros serviços.
- `domainname`: Lista de serviços que dependem de outros serviços.
- `hostname`: Lista de serviços que dependem de outros serviços.
- `ipc`: Lista de serviços que dependem de outros serviços.
- `mac_address`: Lista de serviços que dependem de outros serviços.

## Referências

- [Docker Compose overview](https://docs.docker.com/compose/)
- [Gerenciando múltiplos containers docker com Docker Compose](https://stack.desenvolvedor.expert/appendix/docker/compose.html)
- [Docker Compose – Explicado](https://blog.4linux.com.br/docker-compose-explicado/)
- [Docker e Docker Compose um guia para iniciantes.](https://dev.to/ingresse/docker-e-docker-compose-um-guia-para-iniciantes-48k8)