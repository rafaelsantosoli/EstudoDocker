![Docker + WSL + Linux](/Imagens/template.jpg)


<p align="center">
<img src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge"/>
<img src="http://img.shields.io/static/v1?label=Docker&message=v4.20.1&color=blue&style=for-the-badge"/>
<img src="http://img.shields.io/static/v1?label=WSL&message=2&color=green&style=for-the-badge"/>
</p>

# Estudo Docker

Este repositório contém arquivos utilizados para estudo do Docker.


## Instalação do Docker
Este guia descreve como instalar o Docker no sistema operacional Windows.

## Pré-requisitos
Antes de começar, verifique se o seu sistema atende aos seguintes requisitos:

    - Windows 10 64-bit: Pro, Enterprise ou Education (1607 Anniversary Update, Build 14393 ou posterior)
    - Processador com suporte a virtualização de hardware
    - 4 GB de RAM
    - BIOS com suporte a virtualização de hardware

## Instalação
Para instalar o Docker, siga estas etapas:

    - Baixe o instalador do Docker Desktop para Windows no site oficial do Docker: https://www.docker.com/products/docker-desktop
    - Execute o arquivo baixado e siga as instruções do instalador.
    - Após a instalação, abra o Docker Desktop e aguarde até que o ícone do Docker na bandeja do sistema fique verde ![Status](/imagens/status%20docker.png) ou com icone ![Icone](/Imagens/Icone%20Docker.png).
    - Pronto! O Docker está instalado e pronto para uso.

## Verificando a instalação
Para verificar se o Docker foi instalado corretamente, abra o terminal e execute o comando abaixo:

``` docker --version ```

Se o Docker foi instalado corretamente, a versão instalada será exibida no terminal.

## Configuração do Docker

### Configuração de recursos

O Docker usa recursos do sistema, como CPU e memória, para executar contêineres. É possível configurar a quantidade de recursos que o Docker pode usar.

Para configurar os recursos do Docker, siga os seguintes passos:

    - Clique com o botão direito do mouse no ícone do Docker na bandeja do sistema e selecione "Settings".

    - Selecione a guia "Resources".

Configure a quantidade de CPU e memória que o Docker pode usar.
[Configuração de configurações avançadas no WSL](https://learn.microsoft.com/pt-br/windows/wsl/wsl-config)

### Configuração de rede
O Docker usa uma rede virtual para conectar contêineres. É possível configurar a rede do Docker para se adequar às suas necessidades.

Para configurar a rede do Docker, siga os seguintes passos:

- Clique com o botão direito do mouse no ícone do Docker na bandeja do sistema e selecione "Settings".

- Selecione a guia "Network".

- Configure as opções de rede de acordo com suas necessidades.
[Acessar aplicativos de rede com o WSL](https://learn.microsoft.com/pt-br/windows/wsl/networking)

## Uso do Docker
### Executando um contêiner

Para executar um contêiner, siga os seguintes passos:

- Abra o terminal.

- Execute o seguinte comando para baixar uma imagem do Docker Hub:

``` docker pull hello-world ```

- Execute o seguinte comando para executar o contêiner:

``` docker run hello-world ```

- O contêiner será executado e uma mensagem será exibida no terminal.

### Gerenciando contêineres

Para gerenciar contêineres, use os seguintes comandos:

- docker ps: lista os contêineres em execução.
- docker ps -a: lista todos os contêineres, incluindo os que não estão em execução.
- docker start <container>: inicia um contêiner.
- docker stop <container>: para um contêiner.
- docker rm <container>: remove um contêiner.

### Gerenciando imagens

Para gerenciar imagens, use os seguintes comandos:

- docker images: lista as imagens disponíveis.
- docker pull <image>: baixa uma imagem do Docker Hub.
- docker push <image>: envia uma imagem para o Docker Hub.
- docker rmi <image>: remove uma imagem.

## ✔️ Técnicas e tecnologias utilizadas

    - ``Docker``
    - ``WSL 2``
    - ``Git``

# Referências
- [Install Docker Desktop on Windows](https://docs.docker.com/desktop/install/windows-install/)
- [Documentação do Subsistema Windows para Linux](https://learn.microsoft.com/pt-br/windows/wsl/)
