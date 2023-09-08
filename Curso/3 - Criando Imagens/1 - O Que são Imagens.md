# O que são imagens?

- Imagens são modelos de containers, ou seja, são arquivos que contém todas as configurações necessárias para que um container seja criado.

- Imagens são originadas de arquivos que programamos para que o docker crie uma estrutura que execute determinadas ações em containers.

- Elas contem informações como:
  - Imagens base
  - Diretórios base
  - Comandos a serem executados
  - Portas da aplicação
  - Sistema Operacional
  - Versão do Sistema Operacional
  - Aplicações
  - Configurações
  - Arquivos
  - Bibliotecas
  - etc...

- Ao rodar um container baseado na imagem, as instruções serão executadas em camadas, e ao final, teremos um container pronto para uso.

## Dockerfile

- As imagens são criadas a partir de um arquivo chamado Dockerfile, que contém todas as instruções necessárias para que o docker crie a imagem.

- O Dockerfile é um arquivo de texto que contém todas as instruções necessárias para que o docker crie a imagem.