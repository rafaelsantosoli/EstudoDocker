# Removendo imagens, containers, volumes e networks

## Removendo imagens

- Para remover uma imagem, basta executar o comando `docker rmi <nome da imagem>` ou `docker rmi <id da imagem>`
- Para remover uma imagem que está em uso, basta executar o comando `docker rmi -f <nome da imagem>`, a flag `-f` força a remoção da imagem.    
- Para remover todas as imagens, basta executar o comando `docker rmi $(docker images -q)`, a flag `-q` retorna apenas os ids das imagens.
- Para remover todas as imagens que estão em uso, basta executar o comando `docker rmi -f $(docker images -q)`
- Para remover todas as imagens que não estão em uso, basta executar o comando `docker rmi $(docker images -q -f dangling=true)` ou `docker image prune -a`, o comando `docker image prune -a` remove todas as imagens que não estão em uso. 
  - A flag `-a` remove todas as imagens que não estão em uso, a flag `-f` força a remoção da imagem.

### Exemplos

```sh

# Removendo uma imagem

docker rmi nginx

# Removendo uma imagem que está em uso

docker rmi -f nginx

# Removendo todas as imagens

docker rmi $(docker images -q)

# Removendo todas as imagens que estão em uso

docker rmi -f $(docker images -q)

# Removendo todas as imagens que não estão em uso

docker rmi $(docker images -q -f dangling=true)

# Removendo todas as imagens que não estão em uso

docker image prune -a

```
## Removendo containers

- Para remover um container, basta executar o comando `docker rm <nome do container>` ou `docker rm <id do container>`
- Para remover um container que está em execução, basta executar o comando `docker rm -f <nome do container>`, a flag `-f` força a remoção do container.
- Para remover todos os containers, basta executar o comando `docker rm $(docker ps -aq)`, a flag `-q` retorna apenas os ids dos containers.
- Para remover todos os containers que estão em execução, basta executar o comando `docker rm -f $(docker ps -aq)`
- Para remover todos os containers que não estão em execução, basta executar o comando `docker rm $(docker ps -aq -f status=exited)` ou `docker container prune`, o comando `docker container prune` remove todos os containers que não estão em execução.
  - A flag `-f` força a remoção do container, a flag `-q` retorna apenas os ids dos containers, a flag `-a` retorna todos os containers, a flag `-q` retorna apenas os ids dos containers, a flag `-f` força a remoção do container.

### Exemplos

```sh

# Removendo um container

docker rm nginx

# Removendo um container que está em execução

docker rm -f nginx

# Removendo todos os containers

docker rm $(docker ps -aq)

# Removendo todos os containers que estão em execução

docker rm -f $(docker ps -aq)

# Removendo todos os containers que não estão em execução

docker rm $(docker ps -aq -f status=exited)

# Removendo todos os containers que não estão em execução

docker container prune

```


## Removendo imagens e containers

- Para remover uma imagem e um container, basta executar o comando `docker rmi <nome da imagem> && docker rm <nome do container>` ou `docker rmi <id da imagem> && docker rm <id do container>`

### Exemplos

```sh

# Removendo uma imagem e um container

docker rmi nginx && docker rm nginx

```

## Removendo todas as imagens e containers

- Para remover todas as imagens e todos os containers, basta executar o comando `docker rmi $(docker images -q) && docker rm $(docker ps -aq)` ou `docker rmi -f $(docker images -q) && docker rm -f $(docker ps -aq)`

### Exemplos

```sh

# Removendo todas as imagens e todos os containers

docker rmi $(docker images -q) && docker rm $(docker ps -aq)

# Removendo todas as imagens e todos os containers

docker rmi -f $(docker images -q) && docker rm -f $(docker ps -aq)

```

## Removendo todas as imagens e containers que não estão em uso


- Para remover todas as imagens e todos os containers que não estão em uso, basta executar o comando `docker rmi $(docker images -q -f dangling=true) && docker rm $(docker ps -aq -f status=exited)` ou `docker rmi -f $(docker images -q -f dangling=true) && docker rm -f $(docker ps -aq -f status=exited)`


### Exemplos

```sh

# Removendo todas as imagens e todos os containers que não estão em uso

docker rmi $(docker images -q -f dangling=true) && docker rm $(docker ps -aq -f status=exited)

# Removendo todas as imagens e todos os containers que não estão em uso

docker rmi -f $(docker images -q -f dangling=true) && docker rm -f $(docker ps -aq -f status=exited)

```

## Removendo volumes

- Para remover um volume, basta executar o comando `docker volume rm <nome do volume>` ou `docker volume rm <id do volume>`

### Exemplos

```sh

# Removendo um volume

docker volume rm nginx

```

## Removendo todos os volumes

- Para remover todos os volumes, basta executar o comando `docker volume rm $(docker volume ls -q)` ou `docker volume prune`

### Exemplos

```sh

# Removendo todos os volumes

docker volume rm $(docker volume ls -q)

# Removendo todos os volumes

docker volume prune

```

## Removendo networks

- Para remover uma network, basta executar o comando `docker network rm <nome da network>` ou `docker network rm <id da network>`

### Exemplos

```sh

# Removendo uma network

docker network rm nginx

```

## Removendo todas as networks

- Para remover todas as networks, basta executar o comando `docker network rm $(docker network ls -q)` ou `docker network prune`

### Exemplos

```sh

# Removendo todas as networks

docker network rm $(docker network ls -q)

# Removendo todas as networks

docker network prune

```

## Removendo imagens, containers, volumes e networks

- Para remover todas as imagens, todos os containers, todos os volumes e todas as networks, basta executar o comando `docker rmi $(docker images -q) && docker rm $(docker ps -aq) && docker volume rm $(docker volume ls -q) && docker network rm $(docker network ls -q)` ou `docker rmi -f $(docker images -q) && docker rm -f $(docker ps -aq) && docker volume rm $(docker volume ls -q) && docker network rm $(docker network ls -q)` ou `docker system prune -a`

### Exemplos

```sh

# Removendo todas as imagens, todos os containers, todos os volumes e todas as networks

docker rmi $(docker images -q) && docker rm $(docker ps -aq) && docker volume rm $(docker volume ls -q) && docker network rm $(docker network ls -q)

