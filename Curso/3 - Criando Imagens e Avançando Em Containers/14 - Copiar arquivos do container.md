# Copiando arquivos entre o host e o container

- Para cópia de arquivos entre containers e o host, basta utilizar o comando `docker cp <nome do container>:<caminho do arquivo> <caminho do arquivo>` ou `docker cp <caminho do arquivo> <nome do container>:<caminho do arquivo>`

### Exemplos

```sh

# Copiando um arquivo do container para o host

docker cp nginx:/etc/nginx/nginx.conf .

# Copiando um arquivo do host para o container

docker cp nginx.conf nginx:/etc/nginx/nginx.conf

```

## Copiando arquivos entre containers

- Para copiar arquivos entre containers, basta utilizar o comando `docker cp <nome do container>:<caminho do arquivo> <nome do container>:<caminho do arquivo>`

### Exemplo

```sh

# Copiando um arquivo de um container para outro

docker cp nginx:/etc/nginx/nginx.conf apache:/etc/apache2/apache2.conf

```

![Copiando arquivos entre containers e host](/Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/docker%20cp.jpg)