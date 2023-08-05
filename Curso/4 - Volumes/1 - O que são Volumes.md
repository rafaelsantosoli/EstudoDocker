# O que são Volumes

## Definição

Volumes são diretórios que são montados dentro dos containers. Eles são usados para persistir dados e compartilhar arquivos entre containers.

Todo container possui um diretório raiz, que é o diretório onde o container é executado. Esse diretório é criado pelo Docker e é destruído quando o container é removido. Por isso, não é recomendado salvar dados nesse diretório, pois eles serão perdidos quando o container for removido.

Para persistir dados e compartilhar arquivos entre containers, é necessário criar um volume. Um volume é um diretório que é montado dentro do container. Esse diretório é criado pelo Docker e é persistido mesmo quando o container é removido.



# Comandos Básicos

## Criando um Volume

Para criar um volume, basta executar o comando:

```bash

docker volume create <nome do volume>

```

## Listando Volumes

Para listar os volumes criados, basta executar o comando:

```bash

docker volume ls

```

## Removendo Volumes

Para remover um volume, basta executar o comando:

```bash

docker volume rm <nome do volume>

```

## Montando um Volume

Para montar um volume em um container, basta executar o comando:

```bash

docker run -it -v <nome do volume>:<diretório do container> <imagem>

```

## Montando um Volume em um Container Existente

Para montar um volume em um container existente, basta executar o comando:

```bash

docker container run -it --mount source=<nome do volume>,target=<diretório do container> <imagem>

```

## Montando um Volume em um Container Existente com Dockerfile

Para montar um volume em um container existente com Dockerfile, basta executar o comando:

```bash

docker container run -it --mount source=<nome do volume>,target=<diretório do container> <imagem>

```

## Montando um Volume em um Container Existente com Docker Compose

Para montar um volume em um container existente com Docker Compose, basta executar o comando:

```bash

docker-compose up

```

## Localização dos Volumes

Os volumes são armazenados no diretório `/var/lib/docker/volumes` do host.


## Comandos para localizar os Volumes

Para localizar os volumes, basta executar o comando:

```bash

docker volume inspect <nome do volume>

```
