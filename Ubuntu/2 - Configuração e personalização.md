# Configuração e personalização

## Configuração do Ubuntu - WSL2

### Configuração do usuário - Ubuntu

- Criando um usuário e senha para o Ubuntu:

```bash

sudo adduser <user_name>

```

- `sudo`: Executa o comando como administrador.
- `adduser`: Comando para adicionar um usuário.
- `<user_name>`: Nome do usuário que será criado.
- Após executar o comando acima, será solicitado a criação de uma senha para o usuário.
- Para verificar se o usuário foi criado, execute o comando abaixo:

```bash

cat /etc/passwd

```

- Para mudar de usuário, execute o comando abaixo:

```bash

su <user_name>

```

- Para configurar o usuário, execute o comando abaixo:

```bash

sudo dpkg-reconfigure tzdata

```

- Selecione a região e o fuso horário.
- Para verificar se a configuração foi aplicada, execute o comando abaixo:

```bash

date

```

### Para identificar o nome do usuário, execute o comando abaixo:

```bash

whoami

```

### Para evitar que o Ubuntu solicite a senha do usuário, execute o comando abaixo:

```bash

sudo visudo

```

- Adicione a linha abaixo no final do arquivo:

```bash

<user_name> ALL=(ALL) NOPASSWD: ALL

```

Exemplo:

```bash

user ALL=(ALL) NOPASSWD: ALL

```
Onde:
- user = Nome do usuário.
- ALL = Todos os hosts.
- (ALL) = Todos os comandos.
- NOPASSWD = Não solicitar senha.
- ALL = Todos os comandos.

Para salvar o arquivo, pressione `Ctrl + X`, pressione `Y` e pressione `Enter`.


- Para verificar se a configuração foi aplicada, execute o comando abaixo:

```bash

sudo -l

```
Sera exibido a mensagem abaixo:

```bash

Matching Defaults entries for user on DESKTOP-XXXXXX:
    env_reset, mail_badpass,
    secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin\:/snap/bin

User user may run the following commands on DESKTOP-XXXXXX:

    (ALL) NOPASSWD: ALL

```

### Configurando usuário que wsl iniciará

- Para configurar o usuário que o wsl iniciará, execute o comando abaixo:

```bash

sudo vim /etc/wsl.conf

```

- Adicione as linhas abaixo no arquivo:

```bash

[user]

default=<user_name>

```
- Exemplo:

```bash

[user]

default=user

```

Onde:
- user = Nome do usuário.
- `<user_name>` = Nome do usuário que será iniciado.
- Para salvar o arquivo, pressione `Esc`, digite `:wq` e pressione `Enter`.



### Configuração do teclado - Ubuntu

- Para configurar o teclado, execute o comando abaixo:

```bash

sudo dpkg-reconfigure keyboard-configuration

```

- Selecione o modelo do teclado.

### Configuração do idioma - Ubuntu

- Para configurar o idioma, execute o comando abaixo:

```bash

sudo dpkg-reconfigure locales

```

- Selecione o idioma.

Exemplo: `pt_BR.UTF-8 UTF-8`.

- após selecionar o idioma, execute o comando abaixo:

```bash

sudo update-locale LANG=pt_BR.UTF-8

```

  - O idioma selecionado será aplicado na próxima sessão. reinicie o Ubuntu para aplicar o idioma.


Para verificar se a configuração foi aplicada, execute o comando abaixo:

```bash

locale

```

## Instalando o Ansible - Gerenciador de configuração

O Ansible é um gerenciador de configuração que permite automatizar a configuração de servidores.

Exemplo de uso do Ansible:

- Instalar o Docker.
- Instalar o Docker Compose.
- Instalar o Git.
- Instalar o NodeJS.
- Instalar o NPM.
- Instalar o Yarn.
- Instalar o Zsh.
- Instalar o Oh My Zsh.
- Instalar o Powerlevel10k.
- Instalar o Vim.

Para instalar o Ansible, execute os comandos abaixo:

```bash

sudo apt update && sudo apt install software-properties-common -y

sudo apt-add-repository --yes --update ppa:ansible/ansible

sudo apt install ansible -y

```


## Instalando Git - Controle de versão

- Para instalar o Git, execute o comando abaixo:

```bash

sudo apt install git -y

```

- Para verificar se o Git foi instalado, execute o comando abaixo:

```bash

git --version

```

Exemplo de configuração do Git:

```bash

git config --global user.name "Seu Nome"

git config --global user.email "
    
``` 
Para verificar se a configuração foi aplicada, execute o comando abaixo:

```bash

git config --list

```


### Personalização do terminal - Shell

#### Instalando o Meslo Nerd Font - Fonte para o terminal

#### Configurando o tema do terminal - Shell

#### Instalando o Zsh - Shell

### Instalando Vim - Editor de texto

#### Instalando o Vim-Plug - Gerenciador de plugins para o Vim

## Instalando VSCode - Editor de código

## Instalando Docker - Container

## Instalando Docker Compose - Orquestrador de containers

## Instalando asdf - Gerenciador de versões

#### Instalando o Oh My Zsh - Framework para o Zsh

#### Instalando o Powerlevel10k - Tema para o Oh My Zsh



