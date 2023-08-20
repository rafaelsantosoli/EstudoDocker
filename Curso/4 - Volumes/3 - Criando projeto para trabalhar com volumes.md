# O problema da persistência

## O problema da persistência

Quando um container é removido, todos os dados que estavam dentro dele são perdidos. Isso acontece porque o container possui um diretório raiz, que é o diretório onde o container é executado. Esse diretório é criado pelo Docker e é destruído quando o container é removido. Por isso, não é recomendado salvar dados nesse diretório, pois eles serão perdidos quando o container for removido.

Para persistir dados e compartilhar arquivos entre containers, é necessário criar um volume. Um volume é um diretório que é montado dentro do container. Esse diretório é criado pelo Docker e é persistido mesmo quando o container é removido.

-Projeto 02_volumes

## Criando um volume anonimo

Podemos criar volumes anônimos (`anonymous`), que são volumes que não são nomeados, e que são gerenciados pelo Docker.

Para criar um volume anônimo, basta passar o parâmetro `-v` para o comando `docker run`:

```bash

docker run -d -p 80:80 --name phpmessages_container --rm -v /data phpmessages 

```

Explicando o comando:

- `-d`: executa o container em background;
- `-p 80:80`: mapeia a porta 80 do host para a porta 80 do container;
- `--name phpmessages_container`: define o nome `phpmessages_container` para o container;
- `--rm`: remove o container quando ele for finalizado;
- `-v /data`: cria um volume anônimo, que é montado no diretório `/data` do container.
- `phpmessages`: imagem que será utilizada para criar o container.
- Ao executar o comando, o Docker irá criar um volume anônimo e montá-lo no diretório `/data` do container. Se o diretório `/data` não existir, o Docker irá criá-lo.

Podemos verificar que o volume foi criado e montado no container, acessando o terminal do container e listando o conteúdo do diretório `/data`:

```bash

docker exec -it phpmessages_container bash

cd /data

ls -la

```

Podemos usar o comando docker volume ls para listar os volumes criados:

```bash

docker volume ls

```

ou docker inspect phpmessages_container

```bash

docker inspect phpmessages_container

```

Quando o container for removido, o volume também será removido. Podemos verificar isso executando o comando `docker volume ls`:

```bash

docker volume ls

```

## Criando um volume nomeado

- Podemos criar volumes nomeados (`named`), que são volumes que são nomeados, e que são gerenciados pelo Docker.

- Para criar um volume nomeado, basta passar o parâmetro `-v` para o comando `docker run`:

```bash

docker run -d -p 80:80 --name phpmessages_container -v phpvolume:/var/www/html/messages --rm phpmessages

```

Explicando o comando:

- `-d`: executa o container em background;
- `-p 80:80`: mapeia a porta 80 do host para a porta 80 do container;
- `--name phpmessages_container`: define o nome `phpmessages_container` para o container;
- `-v phpvolume:/var/www/html/messages`: cria um volume nomeado, que é montado no diretório `/var/www/html/messages` do container. O volume é nomeado `phpvolume`.
- `--rm`: remove o container quando ele for finalizado;
- `phpmessages`: imagem que será utilizada para criar o container.

Ao executar o comando, o Docker irá criar um volume nomeado `phpvolume` e montá-lo no diretório `/var/www/html/messages` do container. Se o volume `phpvolume` não existir, o Docker irá criá-lo.

Podemos verificar que o volume foi criado e montado no container, acessando o terminal do container e listando o conteúdo do diretório `/var/www/html/messages`:

```bash

docker exec -it phpmessages_container bash

cd /var/www/html/messages

ls -la

```

Podemos usar o comando `docker volume ls` para listar os volumes criados:

```bash

docker volume ls

```

Quando o container for removido, o volume não será removido. Podemos verificar isso executando o comando `docker volume ls`.

Exemplo:
![Docker volume ls](../Imagens/4%20-%20volumes/docker%20volume%20named.png)

Visualizando o volume com o comando `docker inspect phpmessages_container`:

```bash

docker inspect phpmessages_container

```

![Alt text](../Imagens/4%20-%20volumes/docker%20inspect%20volume.png)

Visualizando o volume no host:

```bash

cd /var/lib/docker/volumes/phpvolume/_data

ls -la

```

