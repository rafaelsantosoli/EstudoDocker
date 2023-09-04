# Acessando os Logs de um container

Podemos verificar o que aconteceu em um container através do comando `docker logs <container_id>`.

Utilizamos da seguinte forma:

```Bash
docker logs <container_id>
```

Onde:

`<container_id>` é o `ID do container` que queremos verificar os `logs`.

Exemplo:

```Bash
docker logs 1a2b3c4d5e6f
```

`As ultimas ações realizadas no container serão exibidas no terminal`.

## Logs em tempo real

`Para acompanhar os logs em tempo real`, podemos utilizar o parâmetro `-f`:

Exemplo:

```Bash
docker logs -f 1a2b3c4d5e6f
```

- Os logs serão exibidos `em tempo real` no terminal.




