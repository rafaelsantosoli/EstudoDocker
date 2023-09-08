# Criando nossa primeira imagem

- Para criar uma imagem vamos precisar de um arquivo chamado Dockerfile, que é um arquivo de texto que contém todos os comandos que um usuário pode chamar na linha de comando para montar uma imagem.
- Este arquivo ficara na raiz do projeto, e para criar uma imagem a partir dele, vamos usar o comando `docker build` e passar o nome da imagem que queremos criar, e o caminho para o Dockerfile.
- Este arquivo é composto por uma série de instruções, que são executadas sequencialmente, e cada instrução cria uma nova camada na imagem.

## Criando Dockerfile

- Vamos criar um arquivo chamado Dockerfile na raiz do projeto, e vamos começar a escrever as instruções.

A linguagem usada para escrever o Dockerfile é bem simples, e é composta por uma série de instruções, que são executadas sequencialmente, e cada instrução cria uma nova camada na imagem.

### Instruções

- A primeira instrução que vamos usar é a `FROM`, que define qual imagem vamos usar como base para a nossa imagem.
- Neste caso vamos usar a imagem do node na versão 12. 

```dockerfile
FROM node:12
```

- A segunda instrução é a `WORKDIR`, que define qual será o diretório de trabalho da nossa imagem.

```dockerfile
WORKDIR /usr/src/app
```

- A terceira instrução é a `COPY`, que copia arquivos do host para dentro da imagem.

```dockerfile
COPY . .
```

- A quarta instrução é a `RUN`, que executa comandos dentro da imagem.

```dockerfile
RUN npm install
```

- A quinta instrução é a `EXPOSE`, que define qual porta o container vai expor.

```dockerfile
EXPOSE 3000
```

- A sexta instrução é a `CMD`, que define qual comando será executado quando o container for iniciado.

```dockerfile
CMD ["node", "index.js"]
```

