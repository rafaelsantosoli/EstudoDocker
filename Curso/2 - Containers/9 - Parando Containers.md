# Parando Containers

Podemos para um Container com o comando `docker stop <nome do container>` ou `docker stop <id do container>`

Desta maneira o container é `parado de forma amigável`, ou seja, o container recebe um sinal para parar e ele para.

Se o container não parar em 10 segundos, ele é parado de forma forçada.

Para verificar containers parados, podemos usar o comando `docker ps -a`

Para verificar container em execução, podemos usar o comando `docker ps`

É possível se referenciar a um container digitando apenas o inicio do seu ID, desde que não haja ambiguidade. Por exemplo, se o ID do container for 1234567890ab, é possível se referenciar a ele apenas digitando o comando docker stop 1234.

## Removendo Containers

Podemos remover um container com o comando `docker rm <nome do container>` ou `docker rm <id do container>`

Para remover todos os containers parados, podemos usar o comando `docker container prune`

