# Autenticação no Docker Hub


- É possível criar uma conta no Docker Hub, para armazenar as imagens criadas localmente.
- Para criar uma conta no Docker Hub, acesse o site [https://hub.docker.com/](https://hub.docker.com/).

## Autenticação no Docker Hub pelo terminal

- Após criar uma conta no Docker Hub, é possível autenticar no Docker Hub pelo terminal.
- É necessário abrir o terminal com permissão de administrador.
- Para autenticar no Docker Hub pelo terminal, execute o comando `docker login` e informe o usuário e senha.


- Atalho dos comandos:
- `docker login` = `docker login -u <username> -p <password>`, ou seja, é possível informar o usuário e senha no comando `docker login`.
- `docker login` = `docker login -u <username> -p <token>`, ou seja, é possível informar o usuário e token no comando `docker login`.


Exemplo:

```sh

$ docker login

```

- Após executar o comando, será solicitado o usuário e senha.

Exemplo:

```sh

$ docker login

Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.

Username: <username>

Password: <password>

Login Succeeded

```

- Para verificar se o processo de autenticação foi concluído com sucesso, execute o comando `docker info`.

Exemplo:

```sh

$ docker info

```

- Será exibido o usuário logado no Docker Hub.

Exemplo:

```sh

$ docker info

...

Username: <username>

...

```

## Logando utilizando token

- Para logar utilizando token, é necessário acessar o site [https://hub.docker.com/](https://hub.docker.com/), clicar em `Account Settings`, `Security` e `New Access Token`.

- Será solicitado o nome do token, informe um nome e clique em `Create`.

- Será exibido o token, copie o token e cole no terminal.

Exemplo:

```sh

$ docker login

Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.

Username: <username>

Password: <token>

Login Succeeded

```

- Para verificar se o processo de autenticação foi concluído com sucesso, execute o comando `docker info`.






## Logout do Docker Hub

- Para deslogar do Docker Hub, execute o comando `docker logout`.

Exemplo:

```sh

$ docker logout

```

- Será exibido a mensagem `Removing login credentials for https://index.docker.io/v1/`.

Exemplo:

```sh

$ docker logout

Removing login credentials for https://index.docker.io/v1/

```

- Para verificar se o processo de deslogar foi concluído com sucesso, execute o comando `docker info`.

Exemplo:

```sh

$ docker info

```

- Será exibido o usuário logado no Docker Hub.

Exemplo:

```sh

$ docker info

...

Username: <username>

...

```

## Criando uma imagem e enviando para o Docker Hub

- Para criar uma imagem e enviar para o Docker Hub, é necessário criar uma tag para a imagem.

Exemplo:

```sh

$ docker tag <image> <username>/<image>

```

- Após criar a tag, é necessário enviar a imagem para o Docker Hub.

Exemplo:

```sh

$ docker push <username>/<image>

```

- Para verificar se a imagem foi enviada com sucesso, acesse o site [https://hub.docker.com/](https://hub.docker.com/).

### Podemos deixar a imagem pública ou privada.

- Para deixar a imagem pública, acesse o site [https://hub.docker.com/](https://hub.docker.com/), clique na imagem e em `Change visibility`.    

- Para deixar a imagem privada, acesse o site [https://hub.docker.com/](https://hub.docker.com/), clique na imagem e em `Change visibility`.

- Para deixar a imagem privada, é necessário ter uma conta paga.


## Baixando uma imagem do Docker Hub

- Para baixar uma imagem do Docker Hub, execute o comando `docker pull`.

Exemplo:

```sh

$ docker pull <username>/<image>

```

- Para verificar se a imagem foi baixada com sucesso, execute o comando `docker images`.

