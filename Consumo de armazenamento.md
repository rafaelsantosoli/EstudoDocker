# Consumo de armazenamento no docker

- Para cada container é criado um volume para armazenar os dados do container
- O volume é criado no diretório /var/lib/docker/volumes
- O volume é criado com um nome aleatório
- O volume é criado com um diretório para armazenar:
  - Os dados do container;
  - Metadados do container;
  - Metadados do volume  ;
  - Metadados do plugin de:
    - Armazenamento;
    - Rede;
    - Volume;
    - Autenticação;    
    
## Tamanho e consumo de armazenamento do volume

- O tamanho do volume é o tamanho do diretório do volume.

- O consumo de armazenamento do volume é o tamanho do diretório do volume somado ao tamanho dos metadados do volume.

- Quando removemos um container o volume não é removido, para remover o volume é necessário utilizar o comando docker volume rm.

- Quando removemos uma imagem o volume não é removido, para remover o volume é necessário utilizar o comando docker volume rm.

- Quando removemos um volume o volume é removido, mas os dados do container não são removidos.


## Comandos para verificar o consumo de armazenamento no docker

### Verificar o consumo de armazenamento de todos os containers
```bash

docker system df

```

### Verificar o consumo de armazenamento de um container específico
```bash

docker system df -v

```

## Exemplo de consumo de armazenamento no docker

- Imagem: ubuntu:latest
- Possui tamanho de 72.9MB
- Quando criamos um container a partir da imagem ubuntu:latest é criado um volume para armazenar os dados do container
- O volume é criado no diretório /var/lib/docker/volumes
- O volume é criado com um nome aleatório
- O tamanho do volume é o tamanho do diretório do volume
- O consumo de armazenamento do volume é o tamanho do diretório do volume somado ao tamanho dos metadados do volume
- O consumo de armazenamento neste exemplo é de 72.9MB + 4.0KB = 72.9MB

Para cada container criado a partir da imagem ubuntu:latest é criado um volume com tamanho de 72.9MB + 4.0KB = 72.9MB

## Listar volumes e exibir o tamanho de cada volume

```bash

docker volume ls -q | xargs docker volume inspect --format '{{ .Name }} {{ .Mountpoint }} {{ .Status }}' | awk '{ printf "%-50s %-50s %-50s\n", $1, $2, $3 }'

```

### Remover todos os volumes

```bash

docker volume rm $(docker volume ls -q)

```








