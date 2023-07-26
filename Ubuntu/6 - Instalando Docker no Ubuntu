# Instalando Docker no Ubuntu

## Pré-Requisitos
Antes de tudo, atualize sua lista existente de pacotes:

```bash
sudo apt update
```

Em seguida, desinstale possíveis versões antigas do Docker e pacotes conflitantes:

```bash
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

Conforme o [manual do docker](https://docs.docker.com/engine/install/ubuntu/), existem 4 possíveis formas de instalação do Docker no Linux:
- O Docker Engine vem incluído no [Docker Desktop](https://docs.docker.com/desktop/install/linux-install/) para Linux. Esta é a maneira mais fácil e rápida de começar.

- Configurar e instalar o Docker Engine a partir do repositório "apt" do Docker. **<-- VAMOS UTILIZAR ESSA**

- Instalá-lo manualmente e gerenciar as atualizações manualmente.

- Utilizar um script de conveniência. Recomendado apenas para ambientes de teste e desenvolvimento.

Execute o comando abaixo para instalar os pacotes que permitem ao apt utilizar um repositório via HTTPS:
    
```bash
sudo apt-get install ca-certificates curl gnupg
```

Adicione a chave GPG oficial do Docker:

```bash
sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

Execute o seguinte comando para configurar o repositório:

```bash
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

## Instalando o Docker Engine
Atualize o índice de pacotes do apt
    
```bash
sudo apt-get update
```

Instale o Docker Engine, containerd e Docker Compose:
### 1) Latest Version
```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### ou 2) Specific Version
Lista as versões disponíveis
```bash
apt-cache madison docker-ce | awk '{ print $3 }'
```
Selecione a versão desejada e instale
```bash
VERSION_STRING=5:24.0.0-1~ubuntu.22.04~jammy
sudo apt-get install docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-buildx-plugin docker-compose-plugin
```

Verifique se o Docker Engine está instalado corretamente executando a imagem hello-world:

```bash
sudo docker run hello-world
```
Este comando baixa uma imagem de teste e a executa em um container. Quando o container é executado, ele exibe uma mensagem e sai, conforme abaixo:
![Alt text](./Imagens/docker-hello-world.png)


