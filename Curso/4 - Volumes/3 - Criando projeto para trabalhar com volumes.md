# O problema da persistência

## O problema da persistência

Quando um container é removido, todos os dados que estavam dentro dele são perdidos. Isso acontece porque o container possui um diretório raiz, que é o diretório onde o container é executado. Esse diretório é criado pelo Docker e é destruído quando o container é removido. Por isso, não é recomendado salvar dados nesse diretório, pois eles serão perdidos quando o container for removido.

Para persistir dados e compartilhar arquivos entre containers, é necessário criar um volume. Um volume é um diretório que é montado dentro do container. Esse diretório é criado pelo Docker e é persistido mesmo quando o container é removido.

[Projeto 02_volumes](..//Projetos%20do%20curso/02_Volumes)

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

## Criando bind mounts

Podemos criar bind mounts, que são volumes que são montados em um diretório do host. Para criar um bind mount, basta passar o parâmetro `-v` para o comando `docker run`:

```bash

docker run -d -p 80:80 --name phpmessages_container -v /home/rafael/Estudo_Docker/02_Volumes/messages:/var/www/html/messages --rm phpmessages

```

Explicando o comando:

- `-d`: executa o container em background;
- `-p 80:80`: mapeia a porta 80 do host para a porta 80 do container;
- `--name phpmessages_container`: define o nome `phpmessages_container` para o container;
- `-v /home/rafael/Estudo_Docker/02_Volumes/messages:/var/www/html/messages`: cria um bind mount, que é montado no diretório `/var/www/html/messages` do container. O diretório `/home/rafael/Estudo_Docker/02_Volumes/messages` é um diretório do host.
- `--rm`: remove o container quando ele for finalizado;
- `phpmessages`: imagem que será utilizada para criar o container.

Ao executar o comando, o Docker irá criar um bind mount e montá-lo no diretório `/var/www/html/messages` do container. Se o diretório `/home/rafael/Estudo_Docker/02_Volumes/messages` não existir, o Docker irá criar um diretório com esse nome.

Quando executado projeto, todos as mensagens enviadas pelo formulário serão salvas no diretório `/home/rafael/Estudo_Docker/02_Volumes/messages` do host.

Podemos verificar que o bind mount foi criado e montado no container, acessando o terminal do container e listando o conteúdo do diretório `/var/www/html/messages`:

```bash

docker exec -it phpmessages_container bash

cd /var/www/html/messages

ls -la

```
Diretório do host:
![Diretório do host:](..//Imagens/4%20-%20volumes/Bind%20mounts.png)

Console do container:
![Console do container:](../Imagens/4%20-%20volumes/Bind_mounts_container.png)


Caso ocorra erro de permissão, execute o comando abaixo:

```bash

sudo chown -R $USER:$USER /home/rafael/Estudo_Docker/02_Volumes/messages
sudo chmod 777  ~/Estudo_Docker/02_Volumes/messages

```

## Bind Mounts pode ser usado para atualizar em tempo real o projeto, sem precisar parar o container ou fazer um rebuild da imagem.

Vamos criar um bind mount para o diretório raiz do projeto, que é o diretório que contém o arquivo `index.php`. Para isso, vamos executar o comando:

```bash

docker run -d -p 80:80 --name phpmessages_container -v /home/rafael/Estudo_Docker/02_Volumes:/var/www/html --rm phpmessages

```

Vamos editar o arquivo `index.php` e adicionar o texto `Bind Mount` no titulo da página.

Quando acessarmos o projeto no navegador, veremos que o texto `Bind Mount` foi adicionado no titulo da página.

![Alt text](../Imagens/4%20-%20volumes/Bind%20Mount%20titulo.png)

