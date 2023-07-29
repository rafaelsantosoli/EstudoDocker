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

Essa configuração é útil para executar comandos como administrador sem precisar digitar a senha do usuário.

Esta mensagem indica que o usuário `user` pode executar qualquer comando como administrador sem precisar digitar a senha do usuário.

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

Exemplos: ["O mínimo que você precisa saber sobre ANSIBLE!"](https://www.youtube.com/watch?v=y5eKF_XnGyE)


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
## Instalando Vim - Editor de texto

O Vim é um editor de texto que permite editar arquivos de texto.
[Como (e por que) eu uso Vim](https://medium.com/campuscode/como-e-por-que-eu-uso-vim-7cd03df0211b)

Vantagens do Vim:

- Não precisa usar o mouse.
- Leve.
- Pode ser usado em servidores.
- Velocidade.
- Personalização.
- Variedade de plugins.
- Portabilidade.
- Pode ser usado em modo gráfico ou texto.


### Instalando o Vim - Editor de texto

- Para instalar o Vim, execute o comando abaixo:

```bash

sudo apt install vim -y

```

- Para verificar se o Vim foi instalado, execute o comando abaixo:

```bash

vim --version

```

## Instalando neovim - Editor de texto

O neovim é um editor de texto que permite editar arquivos de texto.

Neovim é um fork do Vim que permite.

### Instalando o neovim - Editor de texto

- Para instalar o neovim, execute o comando abaixo:

```bash

sudo apt install neovim -y

```

- Para verificar se o neovim foi instalado, execute o comando abaixo:

```bash

nvim --version

```


## Personalização do terminal - Shell

### Instalando o Oh My Zsh - Framework para o Zsh

o Oh My Zsh é um framework para o Zsh que permite personalizar o terminal.

Vantagens do Oh My Zsh:

- Autocompletar comandos, nomes de arquivos e diretórios.
- Correção de erros de digitação.
- Gerenciamento de plugins.
- Gerenciamento avançado de histórico de comandos.

## Instalando o Zsh - Shell

[Instalando o Z Shell (ZSH) no Ubuntu 20.04](https://medium.com/@gutoinfo.ribeiro/instalando-e-configurando-o-zsh-no-ubuntu-20-04-4ef8a2499ed5)

Para instalar o Oh My Zsh, execute o comando abaixo:

```bash

sudo apt install zsh -y

```

```

Para verificar se o Oh My Zsh foi instalado, execute o comando abaixo:

```bash

zsh --version

```
será exibido a mensagem abaixo:

```bash

zsh 5.8 (x86_64-ubuntu-linux-gnu)

```

## Definindo o Zsh como shell padrão

Para definir o Zsh como shell padrão, execute o comando abaixo:

```bash

whereis zsh


```
Será exibido  o caminho do binário do Zsh.

Exemplo:

```bash

zsh: /usr/bin/zsh /usr/lib/x86_64-linux-gnu/zsh /etc/zsh /usr/share/zsh /usr/share/man/man1/zsh.1.gz

```

Para definir o Zsh como shell padrão, execute o comando abaixo:

```bash

sudo usermod -s /usr/bin/zsh $(whoami)

```

ou podemos executar o comando abaixo:

```bash

chsh -s /usr/bin/zsh

```



Explicando o comando acima:

- `sudo`: Executa o comando como administrador.
- `usermod`: Comando para modificar um usuário.
- `-s`: Define o shell padrão.
- `/usr/bin/zsh`: Caminho do binário do Zsh.
- `$(whoami)`: Nome do usuário que será modificado.

Feche o terminal e abra novamente para aplicar as alterações.

Será exibido opções para configurar o Oh My Zsh.

As opções são:

- (0) - Quit and do nothing. Continue to use Bash.
- (1) - Exit, creating a single-line ~/.zshrc you can inspect for changes and then run manually.
- (2) - Continue to the main menu.
- (3) - Populate your ~/.zshrc with the configuration recommended by the system administrator and exit (you will need to edit the file by hand, if so desired).

Digite `2` e pressione `Enter`.

Será exibido o menu do Oh My Zsh.


### Personalizando o terminal - Oh My Zsh com Powerlevel10k

https://github.com/romkatv/powerlevel10k

Para instalar e aplicar, execute os comandos abaixo:

```bash

  apk add git zsh nano vim
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  echo "source ~/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
  cd ~/powerlevel10k
  exec zsh

```






