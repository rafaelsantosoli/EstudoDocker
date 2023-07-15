# Alterando o nome da imagem e tag

- Podemos alterar o nome da imagem e a tag, para facilitar a identificação.
- Podemos nomear a imagem que criamos, com o nome que quisermos, e com a tag que quisermos.
- Vamos utilizar o comando `docker image tag` para alterar o nome da imagem e a tag.
- O comando `docker image tag` recebe dois parâmetros:
  - O nome da imagem que queremos alterar.
  - O novo nome que queremos dar para a imagem.
  - A tag que queremos dar para a imagem.
  - Exemplo: `docker image tag nginx:latest nginx:1.0.0`
  - O comando `docker image tag` não altera a imagem original, ele cria uma nova imagem, com o nome e tag que definimos.
  - O comando `docker image tag` não altera o container, ele altera apenas a imagem.
- O comando `docker image tag` é muito útil quando estamos trabalhando com repositórios de imagens, como o Docker Hub.

- Vamos utilizar o comando `docker tag <nome>` para alterar o nome da imagem e a tag.
- O comando `docker tag <nome>` recebe dois parâmetros:
  - O nome da imagem que queremos alterar.
  - O novo nome que queremos dar para a imagem.
  - A tag que queremos dar para a imagem.
  - Exemplo: `docker tag nginx:latest nginx:1.0.0`
  - O comando `docker tag <nome>` não altera a imagem original, ele cria uma nova imagem, com o nome e tag que definimos.
  - O comando `docker tag <nome>` não altera o container, ele altera apenas a imagem.

- Também podemos `utilizar a tag`, como uma `versão da imagem`.
  - Exemplo: `docker tag nginx:latest nginx:1.0.0`
- Para inserir a tag utilizamos o comando: `docker tag <nome>:<tag>`.
  - Exemplo: `docker tag nginx:latest nginx:1.0.0`
    - Explicações:
      - `nginx:latest` é o nome da imagem e a tag atual.
      - `nginx:1.0.0` é o novo nome da imagem e a nova tag.
- A tag é muito utilizada para definir a versão da imagem.

Obs: O comando `docker tag` é um atalho para o comando `docker image tag`.

![docker_tag](/Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/Docker%20Tag.jpg)