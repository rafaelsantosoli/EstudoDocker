# Download de imagens

- Podemos fazer Download de alguma imagem do Docker Hub e deixar ela salva em nosso computador, para que possamos utilizar ela posteriormente.
- Vamos utilizar o comando `docker pull` para fazer o download de uma imagem do Docker Hub.
- Desta forma, podemos fazer o download de uma imagem do Docker Hub, sem precisar criar um container com ela.
- Desta forma, caso se use em outro container, a imagem já estará salva em nosso computador, e não será necessário fazer o download novamente.

## Baixando imagens

- Vamos utilizar o comando `docker pull` para fazer o download de uma imagem do Docker Hub.

```bash

docker pull python

```

- Podemos verificar que a imagem foi baixada, utilizando o comando `docker images`:

```bash

docker images

```

![docker pull](../Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/imagem%20Python.jpg)