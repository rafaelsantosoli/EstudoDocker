# Bind Mounts

Bind Mounts também são volumes, mas são criados em qualquer lugar do sistema operacional, não apenas no diretório `/var/lib/docker/volumes`.

- Então não criamos um volume em si, `apontamos um diretório`;
- Para criar um bind mount, precisamos apontar um diretório do host para um diretório do container;
- O comando para criar um bind mount é o mesmo para criar um volume, a diferença é que precisamos apontar um diretório do host para um diretório do container;

Bind monts são criados com a opção `-v` ou `--volume` ou com a opção `--mount`.

```bash

# Criando um bind mount com a opção -v

docker run -d --name nginx -p 8080:80 -v /home/rafael/nginx/html:/usr/share/nginx/html nginx

```

Explicando o comando:

-d: Executa o container em background
--name: Nome do container
-p: Porta do host:Porta do container
-v: Cria um volume
/home/rafael/nginx/html: Diretório do host
/usr/share/nginx/html: Diretório do container
nginx: Imagem

```bash

# Criando um bind mount com a opção --volume

docker run -d --name nginx -p 8080:80 --volume /home/rafael/nginx/html:/usr/share/nginx/html nginx

```

Explicando o comando:

-d: Executa o container em background
--name: Nome do container
-p: Porta do host:Porta do container
--volume: Cria um volume
/home/rafael/nginx/html: Diretório do host
/usr/share/nginx/html: Diretório do container
nginx: Imagem


```bash

# Criando um bind mount com a opção --mount

docker run -d --name nginx -p 8080:80 --mount type=bind,source=/home/rafael/nginx/html,target=/usr/share/nginx/html nginx

```

Explicando o comando:

-d: Executa o container em background
--name: Nome do container
-p: Porta do host:Porta do container
--mount: Cria um volume
type=bind: Tipo do volume
source=/home/rafael/nginx/html: Diretório do host
target=/usr/share/nginx/html: Diretório do container
nginx: Imagem


Desta forma, o diretório `/home/rafael/nginx/html` do host é montado no diretório `/usr/share/nginx/html` do container. Este será o volume do container.



## Bind Mounts vs Volumes

A diferença principal entre volumes e bind mounts é que os volumes são gerenciados pelo Docker, enquanto os bind mounts são gerenciados pelo sistema de arquivos do host. Use volumes para armazenar dados específicos do aplicativo e compartilhar dados entre vários contêineres, e use bind mounts para compartilhar arquivos ou diretórios do host com um contêiner ou montar um sistema de arquivos específico do host no contêiner.

### Volumes devem ser usados para:

- Armazenar dados específicos do aplicativo, como banco de dados, logs ou arquivos de configuração.
- Quando os dados devem sobreviver à destruição do contêiner.
- Compartilhar dados entre vários contêineres.
- Quando a segurança é uma preocupação, pois os volumes podem ser facilmente criptografados e armazenados em locais gerenciados pelo Docker.

### Bind mounts devem ser usados para:

- Compartilhar arquivos ou diretórios do host com um contêiner.
- Desenvolvimento local ou para compartilhar arquivos de configuração entre vários contêineres.
- Quando é necessário montar um sistema de arquivos específico do host no contêiner, como um diretório de rede.

## Bind Mounts pode ser usado para atualizar em tempo real o projeto, sem precisar parar o container ou fazer um rebuild da imagem.

```bash

# Criando um bind mount com a opção -v

docker run -d --name nginx -p 8080:80 -v /home/rafael/nginx/html:/usr/share/nginx/html nginx

```

Explicando o comando:

-d: Executa o container em background
--name: Nome do container
-p: Porta do host:Porta do container
-v: Cria um volume
/home/rafael/nginx/html: Diretório do host
/usr/share/nginx/html: Diretório do container
nginx: Imagem

