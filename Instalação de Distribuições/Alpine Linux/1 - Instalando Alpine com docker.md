
# Instalando e configurando Linux Alpine com docker

## Índice

- [Instalando e configurando Linux Alpine com docker](#instalando-e-configurando-linux-alpine-com-docker)
  - [Índice](#índice)
  - [Configurando WSL2 para rodar Alpine Linux.](#configurando-wsl2-para-rodar-alpine-linux)
  - [Instalando Linux Alpine](#instalando-linux-alpine)
  - [Exibindo informações sobre o sistema operacional.](#exibindo-informações-sobre-o-sistema-operacional)
  - [Configurando Alpine Linux](#configurando-alpine-linux)
  - [Instalando Docker](#instalando-docker)
  - [Instalando Docker Compose](#instalando-docker-compose)
  - [Erros e Soluções](#erros-e-soluções)
    - [Erro: "ash: service: not found"](#erro-ash-service-not-found)
    - [Erro: "docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock"](#erro-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket-at-unixvarrundockersock)
    - [Erro: "docker: Cannot connect to the Docker daemon at tcp://localhost:2375. Is the docker daemon running?"](#erro-docker-cannot-connect-to-the-docker-daemon-at-tcplocalhost2375-is-the-docker-daemon-running)
    - [Erro: "docker: Error response from daemon: Conflict. The container name "/alpine" is already in use by container"](#erro-docker-error-response-from-daemon-conflict-the-container-name-alpine-is-already-in-use-by-container)
    - [Erro: "connot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?"](#erro-connot-connect-to-the-docker-daemon-at-unixvarrundockersock-is-the-docker-daemon-running)
    - [Erro: "-ash: sudo: not found"](#erro--ash-sudo-not-found)

## Configurando WSL2 para rodar Alpine Linux.

Verifique se o WSL2 está instalado e configurado corretamente.

```bash

wsl --list --verbose

```

Para verificar a versão do WSL2, execute o comando abaixo:

```bash

wsl --status

```

Para atualizar a versão do WSL2, execute o comando abaixo:

```bash

wsl --update

```

Se o WSL2 não estiver instalado, siga os passos abaixo:

1. Abra o PowerShell como administrador e execute o comando abaixo:

```bash

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

```

2. Reinicie o computador.

3. Abra o PowerShell como administrador e execute o comando abaixo:

```bash

dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

```

4. Reinicie o computador.

5. Baixe e instale o pacote de atualização do kernel do Linux para o WSL2.

[https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

6. Abra o PowerShell como administrador e execute o comando abaixo:

```bash

wsl --set-default-version 2

```

7. Reinicie o computador.

8. Abra o PowerShell como administrador e execute o comando abaixo:

```bash

wsl --list --verbose

```


## Instalando Linux Alpine

1. Acesse o site do Alpine Linux e baixe a versão mais recente [Alpine Linux](https://www.alpinelinux.org/downloads/)
2. Escolha a versão mais recente do Alpine Linux para WSL2.
3. Escolha a arquitetura do processador.
4. Escolha o tipo de instalação.
   ![MINI ROOT FILESYSTEM](/Alpine%20Linux/Imagens/Escolha_plataforma.png)   
5. Apos baixar o arquivo, mova o arquivo para o diretório desejado.
6. Abra o PowerShell como administrador e execute o comando abaixo:


    ```bash

    wsl --import <distro> <diretorio> <arquivo>

    ```
   Exemplo:
   Acesse o diretório da distro Linux e execute o comando abaixo:

    ```bash

    wsl --import Alpine E:\WSL\Alpine E:\WSL\Distribuições\alpine-minirootfs-3.19.0-x86_64.tar.gz

    ```
    Será criado um arquivo chamado ext4.vhdx, esse arquivo é o disco virtual da distro Linux.
    ![Importação da Distro](imagens/Importacao_distro.png)

    Se o comando for executado com sucesso, será exibido a mensagem abaixo:

    ```bash

    Installing...
    The process will complete quickly, without any output.
    Installation successful!

    ```
7. Para listar as distros Linux instaladas, execute o comando abaixo:

    ```bash

    wsl --list --verbose

    ```
    ![Lista de Distribuições instaladas](Imagens/Lista_Distribuicoes.png)

    Explicando o comando: `wsl --list --verbose`
    - `wsl`: Comando para executar o WSL.
    - `--list`: Lista todas as distribuições WSL instaladas.
    - `--verbose`: Exibe informações detalhadas sobre as distribuições WSL instaladas.
    - `--help`: Exibe a ajuda do WSL.
    - `--help <command>`: Exibe a ajuda de um comando específico do WSL.

8. Para iniciar a distro Linux, execute o comando abaixo:

    ```bash

    wsl --distribution <distro>

    ```

    Explicando o comando: `wsl --distribution <distro>`

    - `wsl`: Comando para executar o WSL.
    - `--distribution`: Define a distribuição WSL a ser executada.
    - `<distro>`: Nome da distribuição WSL a ser executada.
      - `Alpine`: Nome da distribuição WSL a ser executada.

## Instalando Linux Alpine da Microsoft Store

Habilitar WSL
Abra o PowerShell como administrador e execute:
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Atualizar janelas para programa interno
wsl --set-default-versão 2

Instale o Alpine #https://www.microsoft.com/en-in/p/alpine-wsl/9p804crf0395?activetab=pivot:overviewtab
Instale o Terminal do Windows #https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701


## Exibindo informações sobre o sistema operacional.

   1. O comando `uname -a` exibe informações sobre o sistema operacional.

       ```bash

       uname -a

       ```

       Explicando o comando: `uname -a`

       - `uname`: Comando para exibir informações sobre o sistema operacional.

   2.  O comando uname -r exibe a versão do kernel do Linux.

       ```bash

       uname -r

       ```

       Explicando o comando: `uname -r`

       - `uname`: Comando para exibir informações sobre o sistema operacional.
       - `-r`: Exibe a versão do kernel do Linux.

    3. O comando uname -m exibe a arquitetura do processador.

       ```bash

       uname -m

       ```

       Explicando o comando: `uname -m`

       - `uname`: Comando para exibir informações sobre o sistema operacional.
       - `-m`: Exibe a arquitetura do processador.

    4. O comando uname -o exibe o nome do sistema operacional.

       ```bash

       uname -o

       ```

       Explicando o comando: `uname -o`

       - `uname`: Comando para exibir informações sobre o sistema operacional.
       - `-o`: Exibe o nome do sistema operacional.

    5. O comando uname -v exibe a versão do sistema operacional.

       ```bash

         uname -v
    
         ```

    6. Com comando cat /etc/alpine-release exibe a versão do Alpine Linux.

       ```bash

       cat /etc/alpine-release

       ```

       Explicando o comando: `cat /etc/alpine-release`

       - `cat`: Comando para exibir o conteúdo de um arquivo.
       - `/etc/alpine-release`: Arquivo que contém a versão do Alpine Linux.


## Configurando Alpine Linux

Acesse com usuário root.

Terminal aberto
fazendo login com root (wsl.exe --distribution Alpine --user root)

```bash	

wsl.exe --distribution Alpine --user root

```

definindo uma senha root (passwd)

```bash

passwd

```

Instalando o Sudo (apk add sudo)

```bash

apk add sudo

```

Descementar uma linha no arquivo /etc/sudoers para permitir que qualquer pessoa use o sudo que esteja no grupo sudo (%sudo ALL=(ALL) ALL),

```bash

nano /etc/sudoers

```

![sudo_all](imagens/sudo_all.png)

crie um grupo sudo 

```bash

addgroup sudo

```

adicione o usuário atual ao grupo sudo

```bash

adduser <username> sudo

```

substitua <username> pelo nome do usuário atual

Para nome do usuário atual, execute o comando abaixo:

```bash

whoami

```

Depois de definir a senha do usuário padrão, feche e reabra o console Alpine.

```bash

passwd <username>

```

Para verificar se o usuário atual está no grupo sudo, execute o comando abaixo:

```bash

groups

```

Configuração Alpine --default-user root

```bash

echo '[automount]
options = "metadata"' > /etc/wsl.conf

```

Atualizar o sistema

```bash

apk update

```

Instalar o zsh

```bash

apk add zsh curl git

```

Detalhes do comando: `apk add zsh curl git`

- `apk`: Comando para gerenciamento de pacotes do Alpine Linux.
- `add`: Adiciona um novo pacote.
- `zsh`: Nome do pacote a ser instalado.
- `curl`: Nome do pacote a ser instalado.
- `git`: Nome do pacote a ser instalado.


Instalar o Oh My Zsh

```bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```

Detalhes do comandoo: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- `sh`: Comando para executar o shell.
- `-c`: Executa o comando em modo de teste.
- `$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)`: Executa o comando `curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh` e retorna o resultado para o comando `sh`.


Instale Python3, Python3-dev e pip3

```bash

apk add python3 python3-dev py3-pip

```

## Demais comando para configurar o Alpine Linux

Execute o comando abaixo para atualizar o sistema:

    ```bash

    apk update

    ```

    Explicando o comando: `apk update`

    - `apk`: Comando para gerenciamento de pacotes do Alpine Linux.
    - `update`: Atualiza os repositórios de pacotes do Alpine Linux.

Com comando apk add openssh-client instala o cliente SSH.
   1. Com o cliente SSH instalado, é possível se conectar a outros servidores Linux.

    ```bash

    apk add openssh-client

    ```

    Explicando o comando: `apk add openssh-client`

    - `apk`: Comando para gerenciamento de pacotes do Alpine Linux.
    - `add`: Adiciona um novo pacote.
    - `openssh-client`: Nome do pacote a ser instalado.

Com comando df -th exibe informações sobre o sistema de arquivos.
    
    ```bash

    df -th

    ```

    Explicando o comando: `df -th`

    - `df`: Comando para exibir informações sobre o sistema de arquivos.
    - `-th`: Exibe informações sobre o sistema de arquivos em formato legível.

Para adicionar um usuário execute o comando abaixo:

    ```bash

    adduser <username>

    ```

    Explicando o comando: `adduser <username>`

    - `adduser`: Comando para adicionar um novo usuário.
    - `<username>`: Nome do usuário a ser adicionado.
Para definir o usuário padrão, execute o comando abaixo:

    ```bash

    adduser -D <username>

    ```

    Explicando o comando: `adduser -D <username>`

    - `adduser`: Comando para adicionar um novo usuário.
    - `-D`: Define o usuário como padrão.
    - `<username>`: Nome do usuário a ser adicionado.

Para obter acesso root, execute o comando abaixo:

    ```bash

    su

    ```

    Explicando o comando: `su`

    - `su`: Comando para obter acesso root.

Utilizando comando `sudo` para executar comandos como root.

    ```bash

    sudo <command>

    ```

    Explicando o comando: `sudo <command>`

    - `sudo`: Comando para executar comandos como root.
    - `<command>`: Comando a ser executado como root.

Para alterar a senha do usuário root, execute o comando abaixo:

    ```bash

    passwd

    ```

    Explicando o comando: `passwd`

    - `passwd`: Comando para alterar a senha do usuário atual.

Para alterar a senha de um usuário, execute o comando abaixo:

    ```bash

    passwd <username>

    ```

    Explicando o comando: `passwd <username>`

    - `passwd`: Comando para alterar a senha de um usuário.



## Instalando Docker

[Docker](https://wiki.alpinelinux.org/wiki/Docker)

1. Execute o comando abaixo para instalar o Docker:

    ```bash

    apk add docker

    ```

    Explicando o comando: `apk add docker`

    - `apk`: Comando para gerenciamento de pacotes do Alpine Linux.
    - `add`: Adiciona um novo pacote.
    - `docker`: Nome do pacote a ser instalado.

2. Vamos adicionar docker a um grupo de usuários chamado docker.

    ```bash

    addgroup <username> docker

    ```

    Explicando o comando: `addgroup <username> docker`

    - `addgroup`: Comando para adicionar um novo grupo de usuários.
    - `<username>`: Nome do usuário a ser adicionado ao grupo de usuários.
    - `docker`: Nome do grupo de usuários a ser adicionado.

    Exemplo:

    ```bash

    addgroup alpine docker

    ```
    Para identificar o nome do usuário atual, execute o comando abaixo:

    ```bash

    whoami

    ```
3. Para iniciar o Daemon do docker na inicialização do sistema 

    Execute o comando abaixo:

    ```bash

    rc-update add docker boot

    ```

    Explicando o comando: `rc-update add docker boot default`

    - `rc-update`: Comando para gerenciamento de serviços do Alpine Linux.
    - `add`: Adiciona um novo serviço.
    - `docker`: Nome do serviço a ser adicionado.
    - `boot`: Habilita o serviço para iniciar com o sistema.
    - `default`: Define o nível de execução do serviço.

    Inicie o serviço do Docker com o comando abaixo:

    ```bash

    service docker start

    ```
    
4. Execute o comando abaixo para iniciar o Docker:

    ```bash

    service docker start

    ```

    Explicando o comando: `service docker start`

    - `service`: Comando para gerenciamento de serviços do Alpine Linux.
    - `docker`: Nome do serviço a ser iniciado.
    - `start`: Inicia o serviço.

    Outros comandos para gerenciamento de serviços do Alpine Linux são:
      - `stop`: Para o serviço.
      - `restart`: Reinicia o serviço.
      - `status`: Exibe o status do serviço.
      - `enable`: Habilita o serviço para iniciar com o sistema.
        - Exemplo para iniciar docker com serviço:
          ```bash
          rc-update add docker boot
          ```
            Explicando o comando: `rc-update add docker boot`
            - `rc-update`: Comando para gerenciamento de serviços do Alpine Linux.
            - `add`: Adiciona um novo serviço.
            - `docker`: Nome do serviço a ser adicionado.
            - `boot`: Habilita o serviço para iniciar com o sistema.            
      - `disable`: Desabilita o serviço para iniciar com o sistema.
      - `reload`: Recarrega as configurações do serviço.
      - `config`: Exibe as configurações do serviço.
      - `help`: Exibe a ajuda do serviço.
      - `--help`: Exibe a ajuda do serviço.
      - `--version`: Exibe a versão do serviço.
      - `--quiet`: Executa o comando em modo silencioso.
      - `--no-reload`: Não recarrega as configurações do serviço.
      - `--no-block`: Não bloqueia o terminal.
      - `--no-pager`: Não exibe o resultado do comando no pager.
      - `--no-ask-password`: Não solicita a senha do usuário.
      - `--full-restart`: Reinicia o serviço por completo.
      - `--dry-run`: Executa o comando em modo de teste.
      - `--root`: Define o diretório raiz do serviço.
      - `--pidfile`: Define o arquivo PID do serviço.
      - `--unit`: Define o nome do serviço.
      - `--job-mode`: Define o modo de execução do serviço.
      - `--job-type`: Define o tipo de execução do serviço.
      - `--host`: Define o host do serviço.
      - `--port`: Define a porta do serviço.
      - `--protocol`: Define o protocolo do serviço.

    Caso ocorra erro ao iniciar o Docker, execute o comando abaixo:

    ```bash

    rc-update add docker boot

    ```

    Caso ocorra erro:
    "ash: service: not found"
    Execute o comando abaixo:

    ```bash

    apk add openrc

    ```
    Este comando irá instalar o `openrc`, que é um conjunto de scripts para gerenciamento de serviços do Alpine Linux.
    Posteriormente tente iniciar o Docker novamente.


    
5. Execute o comando abaixo para verificar a versão do Docker:

    ```bash

    docker --version

    ```

    Explicando o comando: `docker --version`

    - `docker`: Comando para executar o Docker.

6. Execute o comando abaixo para verificar se o Docker está em execução:

    ```bash

    docker info

    ```

    Explicando o comando: `docker info`

    - `docker`: Comando para executar o Docker.
    - `info`: Exibe informações sobre o Docker.

7. docker engine é o daemon do docker, ele é responsável por gerenciar os containers docker.
Para iniciar o daemon do docker, execute o comando abaixo:

```bash

sudo dockerd

```


## Instalando Docker Compose

[Docker Compose](https://wiki.alpinelinux.org/wiki/Docker)

1. Execute o comando abaixo para instalar o Docker Compose:

    ```bash

    apk add docker-compose

    ```

    Explicando o comando: `apk add docker-compose`

    - `apk`: Comando para gerenciamento de pacotes do Alpine Linux.
    - `add`: Adiciona um novo pacote.
    - `docker-compose`: Nome do pacote a ser instalado.

2. Execute o comando abaixo para verificar a versão do Docker Compose:

    ```bash

    docker-compose --version

    ```

    Explicando o comando: `docker-compose --version`

    - `docker-compose`: Comando para executar o Docker Compose.
    - `--version`: Exibe a versão do Docker Compose.



## Erros e Soluções

### Erro: "ash: service: not found"

Caso ocorra erro:

```bash

ash: service: not found

```

Execute o comando abaixo:

```bash

apk add openrc

```

Este comando irá instalar o `openrc`, que é um conjunto de scripts para gerenciamento de serviços do Alpine Linux.


### Erro: "docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock"

Caso ocorra erro:

```bash

docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock

```

Execute o comando abaixo:

```bash

sudo chmod 666 /var/run/docker.sock

```

Este comando irá alterar as permissões do arquivo `/var/run/docker.sock` para `666`.

### Erro: "docker: Cannot connect to the Docker daemon at tcp://localhost:2375. Is the docker daemon running?"

Caso ocorra erro:

```bash

docker: Cannot connect to the Docker daemon at tcp://localhost:2375. Is the docker daemon running?

```

Execute o comando abaixo:

```bash

sudo dockerd

```

Este comando irá iniciar o serviço do Docker.

### Erro: "docker: Error response from daemon: Conflict. The container name "/alpine" is already in use by container"

Caso ocorra erro:

```bash

docker: Error response from daemon: Conflict. The container name "/alpine" is already in use by container

```

Execute o comando abaixo:

```bash

docker rm -f alpine

```

Este comando irá remover o container `alpine`.

### Erro: "connot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?"

Caso ocorra erro:

```bash

connot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?

```

Execute o comando abaixo:

```bash

sudo dockerd

```

Este comando irá iniciar o serviço do Docker.
Para iniciar o serviço do Docker automaticamente, execute o comando abaixo:

```bash

sudo rc-update add docker boot

```

Este comando irá adicionar o serviço do Docker para iniciar com o sistema.

Para iniciar docker em segundo plano, execute o comando abaixo:

```bash

sudo dockerd -d

```
Explicando o comando: `sudo dockerd -d`

- `sudo`: Comando para executar comandos como root.
- `dockerd`: Comando para iniciar o serviço do Docker.
- `-d`: Inicia o serviço do Docker em segundo plano.


Este comando irá iniciar o serviço do Docker em segundo plano.

Outra forma de iniciar o serviço do Docker em segundo plano é executando o comando abaixo:

```bash

sudo dockerd &

```



Para executar o comando `dockerd` sem a necessidade de usar o `sudo`, execute o comando abaixo:

```bash

sudo groupadd docker

```

Este comando irá criar o grupo `docker`.

```bash

sudo usermod -aG docker $USER

```

Este comando irá adicionar o usuário atual ao grupo `docker`.

```bash

newgrp docker

```

Este comando irá atualizar o grupo `docker`.


### Erro: "-ash: sudo: not found"

Caso ocorra erro:

```bash

-ash: sudo: not found

```

Execute o comando abaixo:

```bash

apk add sudo

```

Este comando irá instalar o `sudo`, que é um utilitário para executar comandos como root.

Outros utilitários de comandos como root são:

- `su`: Comando para obter acesso root.
- `doas`: Comando para executar comandos como root.
- `sudo`: Comando para executar comandos como root.
- `pfexec`: Comando para executar comandos como root.
- `dzdo`: Comando para executar comandos como root.
- `dzsh`: Comando para executar comandos como root.
- `yay`: Comando para executar comandos como root.

