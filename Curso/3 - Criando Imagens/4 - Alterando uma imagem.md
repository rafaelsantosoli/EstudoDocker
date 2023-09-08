# Alterando imagem

## Alterando uma imagem

- Podemos alterar uma imagem de duas formas:
  - Criando um container a partir de uma imagem e alterando o container
  - Criando uma nova imagem a partir de uma imagem existente

-Sempre que alteramos o código de uma imagem `vamos precisar fazer o bulid novamente`, para isso vamos utilizar o comando `docker build` com a opção `-t` para definir o nome da imagem e o caminho do diretório com o arquivo `Dockerfile`:

```sh
docker build -t ubuntu-teste .
```

- Após executar o comando, o Docker irá executar o arquivo `Dockerfile` e criar uma nova imagem com o nome `ubuntu-teste`.

- Para o docker é como se fosse uma imagem completamente nova, porém, como já temos uma imagem com o nome `ubuntu-teste`, o Docker irá utilizar a imagem `ubuntu-teste` como base para criar a nova imagem.

-Apos fazer o Bulid da imagem, podemos executar um container a partir da nova imagem:

```sh
docker run -it --name ubuntu-teste ubuntu-teste
```

## Criando um container a partir de uma imagem e alterando o container

- Podemos criar um container a partir de uma imagem e alterar o container, por exemplo, instalando um novo software ou alterando um arquivo de configuração.

- Para isso, podemos utilizar o comando `docker run` com a opção `-it` para executar o container em modo interativo e a opção `--name` para definir um nome para o container.

- Por exemplo, para criar um container a partir da imagem `ubuntu` e executar o container em modo interativo com o nome `ubuntu-teste`, podemos executar o seguinte comando:

  ```sh
  docker run -it --name ubuntu-teste ubuntu
  ```

- Após executar o comando, o terminal será alterado para o terminal do container. Para sair do terminal do container, podemos executar o comando `exit`.

- Para executar novamente o container, podemos utilizar o comando `docker start` com o nome do container:

  ```sh
  docker start ubuntu-teste
  ```

- Para executar o container em modo interativo, podemos utilizar o comando `docker exec` com a opção `-it` e o nome do container:

  ```sh

    docker exec -it ubuntu-teste bash
  ```

- Para sair do terminal do container, podemos executar o comando `exit`.

## Criando uma nova imagem a partir de uma imagem existente

- Podemos criar uma nova imagem a partir de uma imagem existente utilizando o comando `docker commit` com o nome do container e o nome da nova imagem:

  ```sh
  docker commit ubuntu-teste ubuntu-teste2
  ```

Explicando o comando:

- `docker commit` - Comando para criar uma nova imagem a partir de um container
- `ubuntu-teste` - Nome do container
- `ubuntu-teste2` - Nome da nova imagem
- `.` - Caminho do diretório com o arquivo `Dockerfile`
- `-t` - Opção para definir o nome da imagem

- Após criar a nova imagem, podemos executar um container a partir da nova imagem:

```sh

  docker run -it --name ubuntu-teste2 ubuntu-teste2
```

- Para sair do terminal do container, podemos executar o comando `exit`.