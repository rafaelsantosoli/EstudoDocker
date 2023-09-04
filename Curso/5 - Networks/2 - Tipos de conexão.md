# Tipos de conexão

- Os containers podem ter diferentes tipos de conexão entre si, que são definidos através do parâmetro `--link` do comando `docker run`.

- Existem 3 tipos de conexão:

  - `Conexão unidirecional`: o container de destino pode acessar o container de origem, mas o container de origem não pode acessar o container de destino.

  - `Conexão bidirecional`: o container de origem pode acessar o container de destino, e o container de destino pode acessar o container de origem.

  - `Conexão com alias`: o container de origem pode acessar o container de destino através de um alias.

- Os principais tipos de comunicação entre containers são:

  - `Externa`: conexão com uma API de um serviço externo.
  - `Com o host`: Comunicação com a maquina que esta rodando o Docker (`host`).
  - `Entre containers`: Comunicação entre containers.