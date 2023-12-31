# Rodando Container em background (detached)

Quando iniciamos um container, ele é executado em foreground, ou seja, ele fica em execução e não retorna o prompt do terminal. Para que o container seja executado em `background`, ou seja, que ele fique em execução e retorne o prompt do terminal, basta adicionar o parâmetro `-d` na linha de comando.

Quando iniciamos um container em background, o Docker retorna o `ID` do container, como podemos ver no exemplo acima. Para listar os containers em execução, podemos utilizar o comando `docker ps`.

Podemos executar um container em background e em modo interativo, basta adicionar os parâmetros `-d` e `-it` na linha de comando.

Podemos executar um container em background para não precisar ficar com diversos terminais abertos, mas ainda assim, precisamos de um terminal para executar comandos no container. Para executar comandos em um container em background, podemos utilizar o comando `docker exec`.

Exemplo:

```terminal docker
docker exec -it 7b bash

docker exec -it 7b ls -l
```


## Utilizando navegador para acessar o terminal do container

É possível acessar o terminal pelo `navegador`, basta acessar o ip do container e a `porta 9000`.

`Para localizar o ip do container`, podemos utilizar o comando `docker inspect`.

Exemplo:
```terminal docker
docker inspect nginx | grep IPAddress
```

## Verificar se o container está em execução com comando `docker ps`.

Podemos utilizar o `nginx` para criar um servidor web, para isso, basta executar o comando abaixo:

```terminal docker
docker run -d -p 8080:80 nginx
```

O parâmetro `-p` é utilizado para `mapear a porta 80 do container` para a `porta 8080 do host`.

Para acessar o servidor web, basta acessar o ip do host e a `porta 8080`.


É possível se referenciar a um container digitando apenas o inicio do seu ID, desde que não haja ambiguidade. Por exemplo, se o ID do container for 1234567890ab, é possível se referenciar a ele apenas digitando o comando `docker stop 1234`.

```terminal docker

docker stop 1234
```