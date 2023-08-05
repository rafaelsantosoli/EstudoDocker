# Comando Start interativo

A flag `-i` ou `--interactive` nos permite interagir com o container, ou seja, nos permite executar comandos dentro do container.

A flag `-t` ou `--tty` nos permite utilizar o terminal do container.



# Iniciando um container com interatividade

docker start -i -t container_name

# Exemplo:
```sh
docker start -i -t nginx

```
Explicando o comando:
- `docker start` - Comando para iniciar um container.
- `-i` - Flag para permitir interatividade com o container.
- `-t` - Flag para permitir utilizar o terminal do container.
- `nginx` - Nome do container que queremos iniciar.