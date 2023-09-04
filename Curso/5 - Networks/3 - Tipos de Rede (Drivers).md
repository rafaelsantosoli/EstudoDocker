# Tipos de Rede (Drivers)

## Tipos de Drivers

- O Docker possui diferentes tipos de drivers que podem ser utilizados para criar volumes. Os principais são:
  - `Bridge`: é o driver padrão do Docker. Quando criamos um container sem especificar um driver, ele é criado utilizando o driver `bridge`.
  - `Host`: faz com que o container compartilhe a rede com o host. Ou seja, o container não terá um IP próprio, ele utilizará o IP do host.
  - `macvlan`: é utilizado para atribuir um MAC address para cada container, fazendo com que o container seja acessível diretamente na rede.
  - `none`: não atribui um driver de rede para o container. Ou seja, o container não terá acesso à rede.
  - `Plugins de rede de terceiros`: são drivers de rede criados por terceiros.
  - `overlay`: é utilizado para conectar múltiplos Docker Engines, permitindo que containers de diferentes Docker Engines se comuniquem.
  - `ipvlan`: é utilizado para atribuir um endereço IP para cada container, fazendo com que o container seja acessível diretamente na rede.
  - `VXLAN`: é utilizado para conectar múltiplos Docker Engines, permitindo que containers de diferentes Docker Engines se comuniquem.
  - `p2p`: é utilizado para conectar múltiplos Docker Engines, permitindo que containers de diferentes Docker Engines se comuniquem.
  - `Routing mesh`: é utilizado para conectar múltiplos Docker Engines, permitindo que containers de diferentes Docker Engines se comuniquem.

## Recomendação de leitura

[Network drivers](https://docs.docker.com/network/#network-drivers)
[Drivers de rede de contêiner do Windows](https://learn.microsoft.com/pt-br/virtualization/windowscontainers/container-networking/network-drivers-topologies)