# Múltiplas aplicações com mesmo container

- Podemos iniciar vários containers com a mesma imagem, porém com portas diferentes.
  - Podemos inciar um container com várias aplicações, porém não é uma boa prática, pois se uma aplicação cair, todas as outras também cairão.
- As aplicações podem ser acessadas através de suas portas, em paralelo.
- Podemos definir um nome para o container, para facilitar a identificação, com portas diferentes.

Para testar vamos criar um container com a imagem do nginx, com o nome de `nginx1` e com a porta `8080`:

```sh
docker container run -d --name nginx1 -p 8080:80 nginx
```

Agora vamos criar um container com a imagem do nginx, com o nome de `nginx2` e com a porta `8081`:

```sh   
docker container run -d --name nginx2 -p 8081:80 nginx
```

Agora vamos criar um container com a imagem do nginx, com o nome de `nginx3` e com a porta `8082`:

```sh

docker container run -d --name nginx3 -p 8082:80 nginx
```

Todos os containers estão rodando, com portas diferentes, e podemos acessar as aplicações através das portas.

Para acessar a aplicação do `nginx1` vamos acessar a porta `8080`:

```sh

curl localhost:8080
```

Para acessar a aplicação do `nginx2` vamos acessar a porta `8081`:

```sh

curl localhost:8081
```

Para acessar a aplicação do `nginx3` vamos acessar a porta `8082`:

```sh

curl localhost:8082
```

