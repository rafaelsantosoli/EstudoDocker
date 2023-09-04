# Removendo container

Podemos remover um container com o comando `docker rm` seguido do `nome` ou `ID` do container.

Exemplo:

```Bash
docker rm meu_container
```

## Removendo containers em execução

Para remover um container em execução, precisamos pará-lo antes.

Podemos parar um container com o comando `docker stop` seguido do `nome` ou `ID` do container.

Exemplo:

```Bash

docker stop meu_container
```

Se o container estiver em `execução`, podemos forçar a parada adicionando a flag `-f` para forçar a remoção.

Exemplo:

```Bash
docker rm -f meu_container
```

O container removido não é mais apresentado na listagem de containers, `docker ps -a`.

## Removendo containers parados

Para remover todos os containers parados, podemos usar o comando `docker container prune`

Exemplo:
```Bash
docker container prune
```

Para `remover todos os containers parados`, podemos utilizar o comando abaixo:

```Bash
docker rm $(docker ps -q -f status=exited)
```

Explicando o comando acima:

`docker ps -q -f status=exited`: lista apenas os `IDs` de todos os containers parados `(-f status=exited)` e retorna apenas os IDs `(-q)`.

`docker rm`: remove o container.

`$(comando)`: executa o comando dentro do parênteses e retorna o resultado para o comando principal.



