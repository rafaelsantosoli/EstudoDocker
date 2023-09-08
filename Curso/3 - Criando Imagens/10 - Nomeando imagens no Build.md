# Nomeando imagens no Build

- Podemos nomear a imagem que criamos, com o nome que quisermos, e com a tag que quisermos.
- Vamos utilizar a flag `--tag` para alterar o nome da imagem e a tag.
  - Exemplo: `docker build --tag nginx:1.0.0 .`
  - Podemos utilizar a flag `--tag` ou `-t`.
  - O comando `docker build --tag` recebe dois parâmetros:
    - O nome da imagem que queremos alterar.
    - O novo nome que queremos dar para a imagem.
    - A tag que queremos dar para a imagem.
    - Exemplo: `docker build --tag nginx:1.0.0 .`

Exemplo:

```sh
# Criando uma imagem com o nome e tag que quisermos
docker build --tag nginx:1.0.0 .
```
![docker build --tag](../Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/Docker%20build%20tag.jpg)