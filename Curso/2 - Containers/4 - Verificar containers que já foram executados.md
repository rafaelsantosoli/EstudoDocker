# Verificar containers que já foram executados

O comando Docker ps ou Docker container ls lista os containers que estão em execução no momento.

Para listar todos os containers que já foram executados, execute o comando Docker ps -a ou Docker container ls -a.

```Terminal Docker 
docker ps -a

docker container ls -a
```

Verificar imagens que já foram baixadas

O comando *Docker images* ou *Docker image ls* lista as imagens que já foram baixadas.

```Terminal Docker 
docker images 

docker image ls     
``` 

O comando *docker image ls -a*  apresenta todas as imagens, inclusive as intermediárias.

```Terminal Docker 
docker image ls -a
```

Este comando é utilizado para listar as imagens que já foram baixadas, mas não estão em execução no momento.

para listar as imagens em execução, utilize o *comando docker ps* ou *docker container ls*.