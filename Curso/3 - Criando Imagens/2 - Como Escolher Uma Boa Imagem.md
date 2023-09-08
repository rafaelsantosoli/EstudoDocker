# Como Escolher uma boa imagem

- Podemos fazer download das imagens no [Docker Hub](https://hub.docker.com/);
- Porém qualquer um pode fazer upload de uma imagem, isso é um problema de segurança;
- Devemos então nos atentar as imagens oficiais, que são mantidas pelo Docker;
- Outro parâmetro interessante é a quantidade de downloads e a quantidade de estrelas;

## Imagens oficiais

- As imagens oficiais são mantidas pelo Docker;

### Como identificar uma imagem oficial

- As imagens oficiais são identificadas pelo nome do repositório, que é o nome do software;

Exemplo

- A imagem oficial do MySQL é a `mysql`;

![mysql](../Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/Oficial%20Mysql.png)

## Imagens não oficiais

- As imagens não oficiais são mantidas por terceiros;

### Imagens mantidas pela comunidade

- As imagens mantidas pela comunidade são identificadas pelo nome do repositório, que é o nome do software, seguido do nome do mantenedor;

Exemplo

- A imagem mantida pela comunidade do MySQL é a `mysql/mysql-server`;
![mysql-mysql-server](../Imagens/3%20-%20Criando%20Imagens%20e%20Avançando%20Em%20Containers/Comunidade%20Mysql.png)

## Instalando uma imagem do apache

Documentação da Imagem: [httpd - The Apache HTTP Server Project](https://hub.docker.com/_/httpd)

Comando para executar container do apache:

````Bash
docker run -d -p 8080:80 --name meu_apache httpd
````

Explicação do comando acima:

-d = detach (desacoplar) - Roda o container em background (segundo plano) e retorna o ID do container criado.
-p = publish (publicar) - Publica uma porta do container para o host. No exemplo acima, a porta 80 do container foi publicada na porta 8080 do host.
--name - Define um nome para o container.
httpd - Nome da imagem que será utilizada para criar o container.

