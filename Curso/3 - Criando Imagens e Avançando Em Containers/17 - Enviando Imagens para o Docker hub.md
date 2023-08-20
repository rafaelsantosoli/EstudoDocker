# Enviando imagens para o Docker Hub

- Para enviarmos uma imagem para Docker Hub, é necessário que a imagem esteja no formato `<username>/<image>:<version>`.
- É necessário criar um repositório no Docker Hub antes de enviar a imagem.  
- Vamos utilizar o comando `docker push` para enviar a imagem para o Docker Hub.  

## Login no Docker Hub

- Para enviar imagens para o Docker Hub, é necessário estar logado no Docker Hub.

- Para logar no Docker Hub, execute o comando `docker login`.

## Criando repositórios no Docker Hub

- Para criar repositórios no Docker Hub, acesse o site [https://hub.docker.com/](https://hub.docker.com/).

- Clique em `Create Repository`.

- Informe o nome do repositório.

- Clique em `Create`.

  - Será criado um repositório com o nome informado.

  - Será exibido o comando para enviar a imagem para o Docker Hub.

  - Será exibido o comando para baixar a imagem do Docker Hub.

  - Será exibido o comando para excluir o repositório do Docker Hub.

  - Será exibido o comando para atualizar a imagem no Docker Hub.

  - Será exibido o comando para visualizar as informações do repositório no Docker Hub.

  - Será exibido o comando para visualizar as tags do repositório no Docker Hub.

- Para visualizar as informações do repositório no Docker Hub, execute o comando `docker inspect <username>/<image>`.

- Para visualizar as tags do repositório no Docker Hub, execute o comando `docker inspect <username>/<image>:<version>`.

  - O `<version>` é opcional.

  - Se não for informado, será exibida a tag `latest`.

  - Se for informado, será exibida a tag informada.

- Cada usuário pode criar um repositório no Docker Hub.
  - É possível criar repositórios públicos e privados.
  - É possível criar repositórios gratuitos e pagos.  
  - Cada usuário pode criar um repositório público gratuito.
  - Cada usuário pode criar um repositório privado gratuito.



## Enviando imagens para o Docker Hub

- Para enviar imagens para o Docker Hub, é necessário criar uma tag para a imagem.

- Para criar uma tag para a imagem, execute o comando `docker tag <image> <username>/<image>:<version>`.

- Para enviar imagens para o Docker Hub, execute o comando `docker push <username>/<image>:<version>`.

  - O `<version>` é opcional.

  - Se não for informado, será enviado a tag `latest`.

  - Se for informado, será enviado a tag informada.

### Exemplo

- Criando uma tag para a imagem `ubuntu`:

  ```sh
  $ docker tag ubuntu <username>/ubuntu
  ```

- Enviando a imagem `ubuntu` para o Docker Hub:

  ```sh

    $ docker push <username>/ubuntu
    ```

![Enviando imagens para o Docker Hub](../Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/docker%20push%20Docker%20hub.jpg)

## Baixando imagens do Docker Hub

- Para baixar imagens do Docker Hub, execute o comando `docker pull <username>/<image>:<version>`.

  - O `<version>` é opcional.

  - Se não for informado, será baixada a tag `latest`.

  - Se for informado, será baixada a tag informada.

### Exemplo

- Baixando a imagem `ubuntu` do Docker Hub:

  ```sh
  $ docker pull <username>/ubuntu
  ```

![Baixando imagens do Docker Hub](../Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/Docker%20Pull%20minha%20imagen.jpg)


## Atualizando imagens no Docker Hub

- Para atualizar imagens no Docker Hub, é necessário criar uma tag para a imagem.

- Para criar uma tag para a imagem, execute o comando `docker tag <image> <username>/<image>:<version>`.

- Para atualizar imagens no Docker Hub, execute o comando `docker push <username>/<image>:<version>`.

  - O `<version>` é opcional.

  - Se não for informado, será enviado a tag `latest`.

  - Se for informado, será enviado a tag informada.


## Excluindo imagens do Docker Hub

- Para excluir imagens do Docker Hub, é necessário excluir todas as tags da imagem.

- Para excluir todas as tags da imagem, execute o comando `docker rmi <username>/<image>:<version>`.

  - O `<version>` é opcional.

  - Se não for informado, será excluída a tag `latest`.

  - Se for informado, será excluída a tag informada.

### Exemplo

- Excluindo a imagem `ubuntu` do Docker Hub:

  ```sh
  $ docker rmi <username>/ubuntu
  ```

## Excluindo repositórios do Docker Hub

- Para excluir repositórios do Docker Hub, é necessário excluir todas as tags da imagem.

- Para excluir todas as tags da imagem, execute o comando `docker rmi <username>/<image>:<version>`.

  - O `<version>` é opcional.

  - Se não for informado, será excluída a tag `latest`.

  - Se for informado, será excluída a tag informada.

- Para excluir repositórios do Docker Hub, acesse o site [https://hub.docker.com/](https://hub.docker.com/).

- Clique em `Repositories`.

- Clique em `Delete`.

- Informe o nome do repositório.

- Clique em `Delete Repository`.