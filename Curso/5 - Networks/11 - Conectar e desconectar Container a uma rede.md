# Conectando um container a uma rede

- Podemos conectar um container a uma rede já existente ou criar uma nova rede e conectar o container a ela.
- Para conectar um container a uma rede já existente, basta usar o comando `docker network connect <nome-da-rede> <nome-do-container>`.

Exemplo:

```bash

docker network connect minha-rede meu-container

```

## Criando uma rede

- Para criar uma rede, basta usar o comando `docker network create --driver bridge <nome-da-rede>`.

```bash

docker network create --driver bridge minha-rede

```

## Conectando um container a uma rede já existente

- Para conectar um container a uma rede, basta usar o comando `docker network connect <nome-da-rede> <nome-do-container>`.
- O container precisa estar em execução para que seja possível conectá-lo a uma rede.
- Para conectar um container a uma rede, basta usar o comando `docker network connect <nome-da-rede> <nome-do-container>`, onde `<nome-da-rede>` é o nome da rede e `<nome-do-container>` é o nome do container.
- Também é possível utilizar a ID do container e da rede.

```bash

docker network connect minha-rede meu-container

```

## Desconectando um container de uma rede

- Para desconectar um container de uma rede, basta usar o comando `docker network disconnect <nome-da-rede> <nome-do-container>`.

```bash

docker network disconnect minha-rede meu-container

```

## Listando as redes

- Para listar as redes, basta usar o comando `docker network ls`.

```bash

docker network ls

```

