# Testando o docker

- Vamos testar o Docker utilizando uma imagem real.

- Para rodar containers utilizamos o comando:

```Terminal Docker 
docker run
```

Exemplo: 

```Terminal Docker 
docker run hello-world
```

O comando docker *run hello-world* vai baixar a `imagem hello-world` do Docker Hub e rodar um `container` com essa `a blue imagem`.


Neste Exemplo vamos passar apenas o nome da `imagem` que é **docker/whalesay**, o Docker vai baixar a imagem e rodar um container com essa imagem.

```Terminal Docker 
docker run docker/whalesay cowsay Docker is fun
```

O comando `docker run` é utilizado para rodar `containers`, mas também é utilizado para `baixar imagens do Docker Hub`.



