# Export Portas

Os container de `docker não tem conexão com o mundo externo`, para que possamos acessar a aplicação precisamos fazer um `mapeamento de portas`, para isso usamos o parâmetro `-p` na hora de executar o container.

- Por isso precisamos expor a porta usando flag `-p` na hora de executar o container.

- Desta forma o container estará acessível na `porta 8080 do host`.

Vamos testar com `nginx`:

``` terminal docker
docker run -d -p 8080:80 nginx
```


Explicando comando:

- `docker` run para executar o container

- `-d` para executar em background

- `-p` para expor a porta 80 do container para a porta 8080 do host

- `nginx` é a imagem que vamos usar


Agora podemos acessar o `nginx` na porta `8080` do host.

- Para acessar o container em execução usamos o comando `docker exec -it <container> bash`

Exemplo:

``` terminal docker

docker exec -it 7b bash

docker exec -it 7b ls -l
```