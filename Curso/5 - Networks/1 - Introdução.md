# Networks - Introdução

## O que são networks?

Networks são redes que permitem a comunicação entre containers. Quando criamos um container, ele é criado em uma network. Se não especificarmos uma network, o container é criado na network `bridge`.

- `Uma forma de gerenciar a conexão do Docker` com outras plataformas ou até mesmo com outros containers é através das networks.
- As redes ou networks são `criadas separadas do container`, ou seja, `não são criadas junto com o container`.
- Além disso, `um container pode ser conectado a mais de uma network`.
- Existem alguns drivers de network que podem ser utilizados para criar redes no Docker. Os principais são: `bridge`, `host`, `overlay` e `macvlan`.
- A network `bridge` é a network padrão do Docker. Quando criamos um container sem especificar uma network, ele é criado na network `bridge`.
- A network `host` faz com que o container compartilhe a network com o host. Ou seja, o container não terá um IP próprio, ele utilizará o IP do host.
- A network `overlay` é utilizada para conectar múltiplos Docker Engines, permitindo que containers de diferentes Docker Engines se comuniquem.
- A network `macvlan` é utilizada para atribuir um MAC address para cada container, fazendo com que o container seja acessível diretamente na rede.
- Uma rede facilita a comunicação entre containers, pois cada container pode ser acessado através do seu nome, ao invés de ter que utilizar o IP do container.