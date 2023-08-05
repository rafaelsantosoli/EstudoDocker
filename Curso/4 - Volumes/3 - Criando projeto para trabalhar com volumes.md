# O problema da persistência

## O problema da persistência

Quando um container é removido, todos os dados que estavam dentro dele são perdidos. Isso acontece porque o container possui um diretório raiz, que é o diretório onde o container é executado. Esse diretório é criado pelo Docker e é destruído quando o container é removido. Por isso, não é recomendado salvar dados nesse diretório, pois eles serão perdidos quando o container for removido.

Para persistir dados e compartilhar arquivos entre containers, é necessário criar um volume. Um volume é um diretório que é montado dentro do container. Esse diretório é criado pelo Docker e é persistido mesmo quando o container é removido.

## Criando um volume

