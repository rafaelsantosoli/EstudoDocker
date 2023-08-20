# Volume Somente Leitura

- Podemos criar volumes somente leitura, para que não seja possível alterar o conteúdo do volume.
- Para isso, basta adicionar a flag `--read-only` ou `:ro` no comando `docker run` ou `docker volume create`.

```bash

docker run -it --name volumeteste -v volumeteste:/app --read-only ubuntu

```

Explicando o comando:

- `docker run`: Executa um container
- `-it`: Habilita a interação com o container
- `--name volumeteste`: Define o nome do container
- `-v volumeteste:/app`: Monta um volume no container
- `--read-only`: Define o volume como somente leitura
- `ubuntu`: Imagem utilizada para criar o container

`--read-only`: Define o volume como somente leitura

Exemplo com comando `-v`:

```bash

docker run -it --name volumeteste -v volumeteste:/app:ro ubuntu

```

Explicando o comando:

- `docker run`: Executa um container
- `-it`: Habilita a interação com o container
- `--name volumeteste`: Define o nome do container
- `-v volumeteste:/app:ro`: Monta um volume no container
- `ubuntu`: Imagem utilizada para criar o container

`:ro`: Define o volume como somente leitura


## Criando um volume somente leitura com o comando `docker volume create`

- Podemos criar um volume somente leitura com o comando `docker volume create`:

```bash

docker volume create volumeteste --read-only

```

Explicando o comando:

- `docker volume create`: Cria um volume
- `--driver local`: Define o driver do volume
- `--opt type=none`: Define o tipo do volume
- `--opt device=/home/developer/curso-docker/docker/volumes`: Define o diretório do host que será montado no container
- `--opt o=bind`: Define o tipo de montagem do volume
- `--opt read-only`: Define o volume como somente leitura
- `volumeteste`: Nome do volume


Outro exemplo:

```bash

docker volume create volumeteste --driver local --opt type=none --opt device=/home/developer/curso-docker/docker/volumes --opt o=bind --opt read-only

```