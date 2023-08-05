# Rodando Container no Modo interativo

Podemos rodar o container no modo `interativo`, para isso basta adicionar o parâmetro `-it` ao comando docker run.

```Terminal docker
docker run -it ubuntu
``` 

Ao rodar o comando acima, você verá que o terminal ficará travado, isso porque o container está rodando no modo interativo, ou seja, ele está esperando que você digite algum comando.

Para `sair do modo interativo`, basta digitar o comando `exit`.

```Terminal docker
docker run -it ubuntu

exit
```

## Rodando Container em Background

Para rodar o container em `background`, basta adicionar o parâmetro `-d` ao comando *docker run*.

```Terminal docker
docker run -d ubuntu
```

Ao rodar o comando acima, você verá que o terminal não ficará travado, isso porque o container está rodando em `background`.

Para `listar os containers que estão rodando em background`, basta digitar o comando `docker ps`.

```Terminal docker
docker ps
```

É possível se `referenciar a um container` digitando apenas o inicio do seu `ID`, `desde que não haja ambiguidade`. Por exemplo, se o `ID do container` for 1234567890ab, é possível se referenciar a ele `apenas digitando o comando docker stop 1234`.

```Terminal docker
docker stop 1234
```