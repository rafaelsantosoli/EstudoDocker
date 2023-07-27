# Oh My Zsh

o Oh My Zsh é um framework para o Zsh que permite personalizar o terminal.

#### Vantagens do Oh My Zsh:

- Autocompletar comandos, nomes de arquivos e diretórios.
- Correção de erros de digitação.
- Gerenciamento de plugins.
- Gerenciamento avançado de histórico de comandos.

#### Instalando o Zsh - Shell no Ubuntu

Para instalar o Zsh, execute o comando abaixo:

```bash

sudo apt install zsh
```

Para verificar se o Zsh foi instalado, execute o comando abaixo:

```bash

zsh --version
```

#### Instalando o Oh My Zsh - Framework para o Zsh

Para instalar o Oh My Zsh, execute o comando abaixo:

```bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Para verificar se o Oh My Zsh foi instalado, execute o comando abaixo:

```bash

echo $SHELL
```

#### Instalando o Powerlevel10k - Tema para o Oh My Zsh

Para instalar o Powerlevel10k, execute os comandos abaixo:

```bash

git clone --depth=1

cd powerlevel10k

git pull

cd ~

echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

Para verificar se o Powerlevel10k foi instalado, execute o comando abaixo:

```bash

echo $SHELL
```

#### Instalando o Meslo Nerd Font - Fonte para o Powerlevel10k  

Para instalar o Meslo Nerd Font, execute os comandos abaixo:

```bash

cd ~

mkdir .fonts

cd .fonts

```

Para verificar se o Meslo Nerd Font foi instalado, execute o comando abaixo:

```bash

fc-list | grep Meslo
```


## Instalando o oh my zsh no windows

1. Abra o powershell como administrador e execute o comando abaixo para habilitar a execução de scripts:

```powershell

Set-ExecutionPolicy RemoteSigned
```

2. Execute o comando abaixo para instalar o oh my zsh:

```powershell

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

3. Execute o comando abaixo para verificar se o oh my zsh foi instalado:

```powershell

ls -la ~
```

Será exibido a pasta `.oh-my-zsh`.

4. Execute o comando abaixo para verificar a versão do oh my zsh:

```powershell   

zsh --version
```

