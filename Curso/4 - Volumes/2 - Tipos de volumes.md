# Tipos de volumes

Existem três tipos de volumes: volumes de host, volumes anônimos e volumes nomeados.

Índice:

- [Tipos de volumes](#tipos-de-volumes)
  - [Volumes de Host (Bind Mounts)](#volumes-de-host-bind-mounts)
  - [Volumes Anônimos (Anonymous Volumes)](#volumes-anônimos-anonymous-volumes)
  - [Volumes Nomeados (Named Volumes)](#volumes-nomeados-named-volumes)

## Volumes de Host (Bind Mounts)

Os volumes de host são diretórios do host que são montados dentro dos containers. Eles são usados para persistir dados e compartilhar arquivos entre containers.

Estes volumes são criados pelo usuário e são destruídos quando o container é removido.

Para criar um volume de host, basta executar o comando:

```bash

docker run -it -v <diretório do host>:<diretório do container> <imagem>

```
Explicando o comando:

- `docker run`: executa um container;
- `-it`: executa o container em modo interativo;
- `-v`: monta um volume;
- `<diretório do host>`: diretório do host que será montado dentro do container;
- `<diretório do container>`: diretório do container onde o volume será montado;    
- `<imagem>`: imagem que será usada para criar o container.

## Volumes Anônimos (Anonymous Volumes)

Os volumes anônimos são diretórios criados pelo Docker dentro do host. Eles são usados para persistir dados e compartilhar arquivos entre containers.

Estes volumes são criados automaticamente pelo Docker e não possuem nome. Eles são destruídos quando o container é removido.


Para criar um volume anônimo, basta executar o comando:

```bash

docker run -it -v <diretório do host>:<diretório do container> <imagem>

```
Explicando o comando:

- `docker run`: executa um container;
- `-it`: executa o container em modo interativo;
- `-v`: monta um volume;
- `<diretório do host>`: diretório do host que será montado dentro do container;
- `<diretório do container>`: diretório do container onde o volume será montado;
- `<imagem>`: imagem que será usada para criar o container.



## Volumes Nomeados (Named Volumes)

Os volumes nomeados são diretórios criados pelo Docker dentro do host. Eles são usados para persistir dados e compartilhar arquivos entre containers.

Estes volumes são criados pelo Docker e possuem nome. Eles são persistidos mesmo quando o container é removido.

Para criar um volume nomeado, basta executar o comando:

```bash

docker run -it -v <nome do volume>:<diretório do container> <imagem>

```

Explicando o comando:

- `docker run`: executa um container;
- `-it`: executa o container em modo interativo;
- `-v`: monta um volume;
- `<nome do volume>`: nome do volume que será criado;
- `<diretório do container>`: diretório do container onde o volume será montado;
- `<imagem>`: imagem que será usada para criar o container.