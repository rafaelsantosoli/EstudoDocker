# Docker no VsCode

Índice:

- [Docker no VsCode](#docker-no-vscode)
  - [Extensão do Docker do VsCode](#extensão-do-docker-do-vscode)
  - [Instalação](#instalação)
  - [Utilização](#utilização)
    - [Editando dockerfile](#editando-dockerfile)
    - [Gerenciamento de containers e imagens](#gerenciamento-de-containers-e-imagens)
    - [Criação de arquivos Dockerfile e docker-compose.yml](#criação-de-arquivos-dockerfile-e-docker-composeyml)
    - [Sugestão de código](#sugestão-de-código)
  - [Comandos](#comandos)
  - [Referências](#referências)


## Extensão do Docker do VsCode

- [Link para donwload Extensão do Docker do VsCode](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)


A Extensão de docker no VsCode ajuda a gerenciar os containers e imagens do docker, além de permitir a criação de arquivos Dockerfile e docker-compose.yml.

Esta Extensão sugere código (auto complete) para os arquivos `Dockerfile` e `docker-compose.yml`.

## Instalação

Para instalar a extensão, abra o VsCode e clique no ícone de extensões (ou use o atalho Ctrl+Shift+X). Na barra de busca, digite "`docker`" e clique em "`Install`".

![Instalação](https://code.visualstudio.com/assets/docs/containers/overview/installation-extension-search.png)

## Utilização

### Editando dockerfile

Para editar um arquivo `Dockerfile`, clique com o botão direito no arquivo e selecione a opção "`Build Image`".

![Dockerfile](https://code.visualstudio.com/assets/docs/containers/overview/dockerfile-intellisense.png)


### Gerenciamento de containers e imagens

Para gerenciar os containers e imagens, clique no ícone do Docker na barra lateral do VsCode.

![Docker](https://code.visualstudio.com/assets/docs/containers/overview/docker-view-context-menu.gif)


### Criação de arquivos Dockerfile e docker-compose.yml

Para criar um arquivo `Dockerfile`, clique com o botão direito na pasta desejada e selecione a opção "`Add Dockerfile`".

imagem fonte: https://code.visualstudio.com/assets/docs/containers/overview/dockerfile-intellisense.png

Para criar um arquivo `docker-compose.yml`, clique com o botão direito na pasta desejada e selecione a opção "`Add docker-compose.yml`".

### Sugestão de código

A extensão sugere código para os arquivos `Dockerfile` e `docker-compose.yml`.

![compose.yml](https://code.visualstudio.com/assets/docs/containers/overview/tab-completions.gif)

![Alt text](https://code.visualstudio.com/assets/docs/containers/overview/select-subset.gif)


## Comandos

Muitos dos comandos mais comuns do Docker são incorporados diretamente na paleta de comandos:

![Comandos](https://code.visualstudio.com/assets/docs/containers/overview/command-palette.png)




## Referências
- [Docker in Visual Studio Code](https://code.visualstudio.com/docs/containers/overview)
- [Usar o Docker Compose para implantar vários contêineres](https://learn.microsoft.com/pt-br/azure/cognitive-services/containers/docker-compose-recipe)
