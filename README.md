![Docker + WSL + Linux](/Imagens/template.jpg)


<p align="center">
<img src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge"/>
<img src="http://img.shields.io/static/v1?label=Docker&message=v4.20.1&color=blue&style=for-the-badge"/>
<img src="http://img.shields.io/static/v1?label=WSL&message=2&color=green&style=for-the-badge"/>
</p>

## Como obter a documentação :arrow_forward:

- Faça um fork desse repositório para sua conta do GitHub (no canto superior direito da tela)
- Clone o repositório para seu ambiente local
- Abra o arquivo README.md no Visual Studio Code
- Instale a extensão Markdown All in One
- Clique com o botão direito do mouse no arquivo README.md e selecione a opção Open Preview
- A documentação será exibida no painel direito do Visual Studio Code
- Para atualizar a documentação, pressione Ctrl + Shift + V


No terminal, clone o projeto: 

    git clone https://github.com/(seu usuário)/EstudoDocker.git    


# 📖 Índice

- [📖 Índice](#-índice)
- [🚀 Estudo Docker](#-estudo-docker)
  - [Instalação do Docker desktop](#instalação-do-docker-desktop)
    - [Linux](#linux)
    - [MacOs](#macos)
  - [Windows](#windows)
  - [📋 Pré-requisitos](#-pré-requisitos)
  - [🔧 Instalação](#-instalação)
  - [Verificando a instalação](#verificando-a-instalação)
  - [Configuração do Docker](#configuração-do-docker)
    - [Configuração de recursos](#configuração-de-recursos)
    - [Configuração de rede](#configuração-de-rede)
  - [Uso do Docker](#uso-do-docker)
    - [Executando um contêiner](#executando-um-contêiner)
    - [Gerenciando contêineres](#gerenciando-contêineres)
    - [Gerenciando imagens](#gerenciando-imagens)
  - [Livros:](#livros)
  - [✔️ Técnicas e tecnologias utilizadas](#️-técnicas-e-tecnologias-utilizadas)
- [Referências](#referências)



# 🚀 Estudo Docker

Este repositório contém arquivos utilizados para estudo do Docker.


## Instalação do Docker desktop 

### Linux

- Para instalação em Linux, acesse [Instalação do Docker Linux](/1%20-%20Introdução/8%20-%20Instalação%20do%20docker%20no%20linux.txt)

### MacOs

- Para instalação em Mac, acesse [Instalação do Docker MacOs](/1%20-%20Introdução/7%20-%20Instalação%20docker%20no%20mac.txt)

## Windows
- Este guia descreve como instalar o Docker no sistema operacional Windows.
- Mais detalhes em [Instalação do Docker no Windows](/1%20-%20Introdução/6%20-%20Instalação%20do%20docker%20no%20windows.txt)

## 📋 Pré-requisitos
Antes de começar, verifique se o seu sistema atende aos seguintes requisitos:

1. Windows 10 64-bit: Pro, Enterprise ou Education (1607 Anniversary Update, Build 14393 ou posterior)
2. Processador com suporte a virtualização de hardware
3. 4 GB de RAM
4. BIOS com suporte a virtualização de hardware

## 🔧 Instalação
Para instalar o Docker, siga estas etapas:

1. Baixe o instalador do Docker Desktop para Windows no site oficial do [Docker](https://www.docker.com/products/docker-desktop)
2. Execute o arquivo baixado e siga as instruções do instalador.
3. Após a instalação, abra o Docker Desktop e aguarde até que o ícone do Docker na bandeja do sistema fique verde ![Status](/Imagens/Status%20docker.png) ou com ícone estático ![ícone](/Imagens/Icone%20Docker.png).
4. Pronto! O Docker está instalado e pronto para uso.

## Verificando a instalação
Para verificar se o Docker foi instalado corretamente, abra o terminal e execute o comando abaixo:

    docker --version

Se o Docker foi instalado corretamente, a versão instalada será exibida no terminal.

## Configuração do Docker

### Configuração de recursos

O Docker usa recursos do sistema, como CPU e memória, para executar contêineres. É possível configurar a quantidade de recursos que o Docker pode usar.

Para configurar os recursos do Docker, siga os seguintes passos:

1. Clique com o botão direito do mouse no ícone do Docker na bandeja do sistema e selecione "Settings".
 
2. Selecione a guia "Resources".

Configure a quantidade de CPU e memória que o Docker pode usar.
[Configuração de configurações avançadas no WSL](https://learn.microsoft.com/pt-br/windows/wsl/wsl-config)

### Configuração de rede
O Docker usa uma rede virtual para conectar contêineres. É possível configurar a rede do Docker para se adequar às suas necessidades.

Para configurar a rede do Docker, siga os seguintes passos:

1. Clique com o botão direito do mouse no ícone do Docker na bandeja do sistema e selecione "Settings".

2. Selecione a guia "Network".

3. Configure as opções de rede de acordo com suas necessidades.
[Acessar aplicativos de rede com o WSL](https://learn.microsoft.com/pt-br/windows/wsl/networking)

## Uso do Docker
### Executando um contêiner

Para executar um contêiner, siga os seguintes passos:

1. Abra o terminal.

2. Execute o seguinte comando para baixar uma imagem do Docker Hub:

        docker pull hello-world

3. Execute o seguinte comando para executar o contêiner:

        docker run hello-world

O contêiner será executado e uma mensagem será exibida no terminal.

### Gerenciando contêineres

Para gerenciar contêineres, use os seguintes comandos:

- ``docker ps``: lista os contêineres em execução.
- ``docker ps -a``: lista todos os contêineres, incluindo os que não estão em execução.
- ``docker start <container>``: inicia um contêiner.
- ``docker stop <container>``: para um contêiner.
- ``docker rm <container>``: remove um contêiner.

### Gerenciando imagens

Para gerenciar imagens, use os seguintes comandos:

- ``docker images``: lista as imagens disponíveis.
- ``docker pull <image>``: baixa uma imagem do Docker Hub.
- ``docker push <image>``: envia uma imagem para o Docker Hub.
- ``docker rmi <image>``: remove uma imagem.

## Livros:

- [Por que usar Docker?](https://stack.desenvolvedor.expert/appendix/docker/porque.html)


## ✔️ Técnicas e tecnologias utilizadas

- ``Docker``
- ``WSL 2``
- ``Git``

# Referências
- [Install Docker Desktop on Windows](https://docs.docker.com/desktop/install/windows-install/)
- [Documentação do Subsistema Windows para Linux](https://learn.microsoft.com/pt-br/windows/wsl/)
