Indice:

- [Onde encontrar imagens?](#onde-encontrar-imagens)
  - [Como utilizar imagens?](#como-utilizar-imagens)
    - [Diferença entre executar uma imagem de forma interativa e em background](#diferença-entre-executar-uma-imagem-de-forma-interativa-e-em-background)
    - [Diferença entre executar uma imagem de forma interativa e em background e com acesso ao terminal](#diferença-entre-executar-uma-imagem-de-forma-interativa-e-em-background-e-com-acesso-ao-terminal)
  - [Comandos para executar imagens de forma interativa e em background e com acesso ao terminal](#comandos-para-executar-imagens-de-forma-interativa-e-em-background-e-com-acesso-ao-terminal)
  - [Listando imagens](#listando-imagens)
  - [Removendo imagens](#removendo-imagens)
  - [listando container](#listando-container)
  - [Removendo containers](#removendo-containers)

# Onde encontrar imagens?

- Vamos encontrar imagens no [Docker Hub](https://hub.docker.com/)
- Neste site podemos encontrar `imagens` de diversos tipos de aplicações, como por exemplo: `Wordpress, MySQL, MongoDB, Redis, etc`.
- Exemplo, [Node.js](https://hub.docker.com/_/node/), [MySQL](https://hub.docker.com/_/mysql/) e  [MongoDB](https://hub.docker.com/_/mongo/).

## Como utilizar imagens?

- Para utilizar uma imagem, basta executar o comando `docker run <imagem>`

Exemplo: 
```Terminal Docker 
docker run node
```
- O comando acima irá procurar a imagem node no Docker Hub, baixar a imagem e executar o comando node dentro de um container.
- Para instalar uma versão específica, basta executar o comando `docker run <imagem>:<versão>`. 

Exemplo: 
```Terminal Docker 
docker run node:12
```

### Diferença entre executar uma imagem de forma interativa e em background

- Para executar a imagem de forma interativa, basta executar o comando `docker run -it <imagem>`.

Exemplo: 
```Terminal Docker 
docker run -it node:12
```

- Para executar a imagem em background, basta executar o comando `docker run -d <imagem>`.

Exemplo: 
```Terminal Docker 
docker run -d node:12
```

### Diferença entre executar uma imagem de forma interativa e em background e com acesso ao terminal

- Em `background` não tem acesso ao terminal, já em `interativo` tem acesso ao terminal


## Comandos para executar imagens de forma interativa e em background e com acesso ao terminal

- `Para executar a imagem em background` e com acesso ao terminal, basta executar o comando docker run -d -it <imagem>, exemplo: docker run -d -it node:12

- `Para executar a imagem em background` e com acesso ao terminal e com uma porta específica, basta executar o comando docker run -d -it -p <porta>:<porta> <imagem>, exemplo: docker run -d -it -p 8080:8080 node:12

- Para executar a imagem em background e com acesso ao terminal e com uma porta específica e com um nome específico, basta executar o comando docker run -d -it -p <porta>:<porta> --name <nome> <imagem>, exemplo: docker run -d -it -p 8080:8080 --name node-app node:12

- Para executar a imagem em background e com acesso ao terminal e com uma porta específica e com um nome específico e com um volume específico, basta executar o comando docker run -d -it -p <porta>:<porta> -v <volume>:<volume> --name <nome> <imagem>, exemplo: docker run -d -it -p 8080:8080 -v /home/rodrigo/node-app:/usr/app --name node-app node:12

- Para executar a imagem em background e com acesso ao terminal e com uma porta específica e com um nome específico e com um volume específico e com um comando específico, basta executar o comando docker run -d -it -p <porta>:<porta> -v <volume>:<volume> --name <nome> <imagem> <comando>, exemplo: docker run -d -it -p 8080:8080 -v /home/rodrigo/node-app:/usr/app --name node-app node:12 npm start

- Para executar a imagem em background e com acesso ao terminal e com uma porta específica e com um nome específico e com um volume específico e com um comando específico e com variáveis de ambiente, basta executar o comando docker run -d -it -p <porta>:<porta> -v <volume>:<volume> -e <variável>=<valor> --name <nome> <imagem> <comando>, exemplo: docker run -d -it -p 8080:8080 -v /home/rodrigo/node-app:/usr/app -e APP_COLOR=blue --name node-app node:12 npm start

- Para executar a imagem em background e com acesso ao terminal e com uma porta específica e com um nome específico e com um volume específico e com um comando específico e com variáveis de ambiente e com variáveis de ambiente de forma externa, basta executar o comando docker run -d -it -p <porta>:<porta> -v <volume>:<volume> --env-file <arquivo> --name <nome> <imagem> <comando>, exemplo: docker run -d -it -p 8080:8080 -v /home/rodrigo/node-app:/usr/app --env-file .env --name node-app node:12 npm start

- Para executar a imagem em background e com acesso ao terminal e com uma porta específica e com um nome específico e com um volume específico e com um comando específico e com variáveis de ambiente e com variáveis de ambiente de forma externa e com um comando específico, basta executar o comando docker run -d -it -p <porta>:<porta> -v <volume>:<volume> --env-file <arquivo> --name <nome> <imagem> <comando>, exemplo: docker run -d -it -p 8080:8080 -v /home/rodrigo/node-app:/usr/app --env-file .env --name node-app node:12 npm run dev



## Listando imagens

- Para `listar as imagens` disponíveis no host local, basta executar o comando docker images.

    Exemplo: 
    ```
    docker images
    ```
- O comando acima irá listar todas as imagens disponíveis no host local.


## Removendo imagens

- Para `remover uma imagem`, basta executar o comando docker rmi <imagem>

    Exemplo: 
    ```
    docker rmi node
    ```
- O comando acima irá remover a imagem node do host local.
- Para remover uma versão específica, basta executar o comando docker rmi <imagem>:<versão>, exemplo: docker rmi node:12



## listando container

- Para `listar os containers disponíveis no host local`, basta executar o comando docker ps
    Exemplo: 
    ```
    docker ps
    ```

- O comando acima irá listar todos os `containers disponíveis no host local`.
- Para listar todos os containers, incluindo os que estão parados, basta executar o comando docker ps -a

## Removendo containers

- Para `remover um container`, basta executar o comando docker rm <container>
    Exemplo: 
    ```
    docker rm 7c76
    ```
- O comando acima irá `remover o container` com o id 7c76 do host local.
- Para remover um container que esteja em execução, basta executar o comando docker rm -f <container>, exemplo: docker rm -f 7c76
