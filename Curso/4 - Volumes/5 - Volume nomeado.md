# Volumes nomeados

Volume nomeado é um volume que possui um nome, e é utilizado para armazenar dados que precisam ser persistidos. Por exemplo, podemos criar um volume nomeado para armazenar os dados de um banco de dados, ou os dados de um sistema de arquivos.

O local onde os volumes nomeados são armazenados precisa ser definido no arquivo de configuração do Docker. Por padrão, o Docker armazena os volumes nomeados no diretório `/var/lib/docker/volumes`.

É importante lembrar que o diretório informado deve estar no WORKDIR do docker, ou seja, o diretório deve estar dentro do diretório do docker.

- Podemos criar volumes nomeados (`named`), que são volumes que são nomeados.
- Agora o volume possui um nome, e não é mais anônimo.
- Para criar um volume nomeado, basta passar o parâmetro `-v` para o comando `docker run`:

```bash

docker run -it --rm -v nome_do_volume:/app ubuntu
```

Explicando o comando:

- `-it`: executa o container em modo interativo, para que possamos acessar o terminal do container;
- `--rm`: remove o container quando ele for finalizado;
- `-v nome_do_volume:/app`: cria um volume nomeado, que é montado no diretório `/app` do container.
- `ubuntu`: imagem que será utilizada para criar o container.
- Ao executar o comando, o Docker irá criar um volume nomeado chamado `nome_do_volume` e montá-lo no diretório `/app` do container. Se o volume `nome_do_volume` não existir, o Docker irá criá-lo.

- utilizando comando `docker volume ls`, podemos verificar que o volume foi criado:

```bash

docker volume ls
```

- Podemos verificar que o volume foi criado e montado no container, acessando o terminal do container e listando o conteúdo do diretório `/app`:

```bash

cd /app

ls -la
```

- Para entrar no terminal do container, execute o comando:

```bash

docker exec -it nome_do_container bash
```

Explicando o comando:

- `docker exec`: executa um comando dentro do container;
- `-it`: executa o container em modo interativo, para que possamos acessar o terminal do container;
- `nome_do_container`: nome do container que será executado;
- `bash`: comando que será executado dentro do container.

