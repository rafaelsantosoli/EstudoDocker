# Criando volumes manualmente

Podemos criar volumes manualmente com o comando `docker volume create`:

```bash

docker volume create phpvolume

```

Explicando o comando:

- `docker volume create`: Cria um volume
- `phpvolume`: Nome do volume
- `docker volume ls`: Lista os volumes criados
- `docker volume inspect phpvolume`: Exibe informações sobre o volume

Para utilizar o volume criado, basta passar o nome do volume no comando `docker run`:

```bash

docker run -d -p 80:80 --name phpmessages_container -v phpvolume:/var/www/html/messages --rm phpmessages

```
