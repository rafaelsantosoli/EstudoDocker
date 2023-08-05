# Removendo container apos utilização

- Um container pode ser automaticamente deletado após sua utilização, basta utilizar o parâmetro `--rm` na criação do container
  - Comando: `docker run --rm -it <nome da imagem>`
  - Exemplo: `docker run --rm -it ubuntu`
    - Explicação:
      - `docker run` - Executa um container
      - `--rm` - Remove o container após sua utilização
      - `-it` - Habilita a interação com o container
      - `ubuntu` - Imagem utilizada para a criação do container
  - O container será deletado após sua utilização
  - Quando a execução do container for finalizada, o container será deletado

Exemplo de execução:
```sh
$ docker run --rm -it ubuntu
root@e3b4c2d3f4a5:/# exit

$ docker ps -a

CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
```

Quando executado container em background, o container será deletado após sua finalização
```sh
$ docker run --rm -d -p 8080:80 nginx

$ docker ps

CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES

$ docker ps -a

CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES

```

Este recurso é muito útil para containers que são utilizados apenas para executar um comando e depois são deletados, como por exemplo, um container que executa um backup de um banco de dados e depois é deletado.