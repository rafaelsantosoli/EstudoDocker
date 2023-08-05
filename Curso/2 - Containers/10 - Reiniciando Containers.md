# Reiniciando Containers


- Para `parar um container`, basta executar o comando:
```
docker stop <container_id>
```


- Para `iniciar um container`, basta executar o comando:

```
docker start <container_id>
```

- Para `reiniciar um container`, basta executar o comando:
```
docker restart <container_id>
```

Observação: O comando `docker run` cria um novo container `a partir de uma imagem`. `Se a imagem não estiver disponível localmente, o Docker irá baixá-la do Docker Hub`. O comando abaixo cria um novo container a partir da imagem do Ubuntu e executa o comando `ls -l` dentro dele.


É possível se `referenciar a um container digitando apenas o inicio do seu ID`, desde que `não haja ambiguidade`. Por exemplo, se o `ID` do container for `1234567890ab`, é possível se referenciar a ele apenas digitando o comando `docker stop 1234`.


# Reiniciar container modo interativo 
```
docker run -it ubuntu bash

docker start -a -i <container_id>
```

Explicando comando acima:

`-a` faz com que o docker attach seja executado, ou seja, o terminal é conectado ao container.

`-i` faz com que o container seja executado em modo interativo.

```
docker run -it ubuntu bash
```