# Removendo Volumes

## Removendo volumes

Podemos remover um volume e excluir os dados do host.

- Podemos remover um volume com o comando `docker volume rm <nome do volume>`:

```bash

docker volume rm volumeteste

```

Explicando o comando:

- `docker volume rm`: Remove um volume
- `volumeteste`: Nome do volume


## Removendo todos os volumes não utilizados

- Podemos remover todos os volumes não utilizados com o comando `docker volume prune`:

```bash

docker volume prune

```

Explicando o comando:

- `docker volume prune`: Remove todos os volumes não utilizados


## Removendo todos os volumes

- Podemos remover todos os volumes com o comando `docker volume prune -a`:

```bash

docker volume prune -a

```

Explicando o comando:

- `docker volume prune -a`: Remove todos os volumes


Variáveis do comando `docker volume prune`:

- `-f`: Força a remoção de todos os volumes
- `-h`: Exibe a ajuda do comando
- `--filter`: Filtra os volumes de acordo com uma condição
- `--format`: Formata a saída do comando
- `--volumes`: Remove apenas os volumes especificados
- `--volumes-label`: Remove apenas os volumes com a label especificada
- `--volumes-name`: Remove apenas os volumes com o nome especificado
- `--volumes-quiet`: Não exibe a saída do comando
- `--volumes-filter`: Filtra os volumes de acordo com uma condição
- `--volumes-format`: Formata a saída do comando
- `--volumes-label-filter`: Filtra os volumes de acordo com uma condição

