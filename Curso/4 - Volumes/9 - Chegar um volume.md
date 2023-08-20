# Chegar um volume

Podemos verificar os detalher de um volume em específico com o comando `docker volume inspect`:

```bash

docker volume inspect volumeteste

```

![Alt text](../Imagens/4%20-%20volumes/Volume_inspect.png)

Explicando o comando:

- `docker volume inspect`: Exibe informações sobre o volume
- `volumeteste`: Nome do volume

Desta forma podemos verificar o diretório do host que o volume está montado.

O docker salva os dados do volume no um diretório do host, que é o diretório `/var/lib/docker/volumes`. Podemos verificar isso com o comando `docker inspect phpmessages_container`:

```bash

docker inspect volumeteste

```

![Alt text](../Imagens/4%20-%20volumes/Volume_inspect.png)

Explicando o comando:

- `docker inspect`: Exibe informações sobre o container
- `volumeteste`: Nome do container
