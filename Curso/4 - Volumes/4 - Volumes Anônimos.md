# Volumes Anônimos

Volumes anônimos são volumes que não são nomeados,  e são usados para armazenar dados que não precisam ser compartilhados entre containers.

- Podemos criar volumes anônimos (`anonymous`), que são volumes que não são nomeados, e que são gerenciados pelo Docker.

- Para criar um volume anônimo, basta passar o parâmetro `-v` para o comando `docker run`:

```bash

docker run -it --rm -v /app ubuntu
```
Explicando o comando:

- `-it`: executa o container em modo interativo, para que possamos acessar o terminal do container;
- `--rm`: remove o container quando ele for finalizado;
- `-v /app`: cria um volume anônimo, que é montado no diretório `/app` do container.
- `ubuntu`: imagem que será utilizada para criar o container.
- Ao executar o comando, o Docker irá criar um volume anônimo e montá-lo no diretório `/app` do container. Se o diretório `/app` não existir, o Docker irá criá-lo.

- Podemos verificar que o volume foi criado e montado no container, acessando o terminal do container e listando o conteúdo do diretório `/app`:

```bash

cd /app

ls -la
```

- Podemos criar um arquivo no diretório `/app` do container:

```bash

touch teste.txt
```

- Este arquivo será salvo no volume anônimo, e não no container. Podemos verificar isso acessando o diretório `/var/lib/docker/volumes` do host:

```bash

cd /var/lib/docker/volumes

ls -la
```

- Para conceder permissão ao usuário atual para acessar o diretório `/var/lib/docker/volumes`, execute o comando:

```bash

sudo chmod 777 /var/lib/docker/volumes
```

- Este container estala atrelado ao volume anônimo, e quando o container for removido, o volume também será removido. Podemos verificar isso executando o comando `docker volume ls`:

```bash

docker volume ls
```

