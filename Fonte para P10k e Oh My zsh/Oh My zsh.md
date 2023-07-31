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

Para definir zsh como shell padrão, execute o comando abaixo:

```bash

chsh -s $(which zsh)
```

Para verificar se o Oh My Zsh foi instalado, execute o comando abaixo:

```bash

echo $SHELL
```

#### Instalando o Powerlevel10k - Tema para o Oh My Zsh

Para instalar o Powerlevel10k, execute os comandos abaixo:

```bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

```

Para verificar se o Powerlevel10k foi instalado, execute o comando abaixo:

```bash

ls -la ~
```



#### Instalando o Meslolgs Nerd Font - Fonte para o Powerlevel10k

Para instalar o Meslo Nerd Font, execute os comandos abaixo:

```bash

cd ~

mkdir .fonts

cd .fonts

```

Baixe as fontes:

```bash

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

```

Para verificar se o Meslo Nerd Font foi instalado, execute o comando abaixo:

```bash

ls -la ~
```
Para definir a fonte padrão do terminal no Ubuntu, execute o comando abaixo:

```bash

sudo nano /etc/profile.d/fonts.sh
```

Adicione o conteúdo abaixo:

```bash

#!/bin/bash

echo "Definindo fonte padrão do terminal"

gsettings set org.gnome.desktop.interface monospace-font-name 'MesloLGS NF Regular 11'
```

Para verificar se o Meslo Nerd Font foi instalado, execute o comando abaixo:

```bash

ls -la /etc/profile.d
```

Para verificar se o Meslo Nerd Font foi instalado, execute o comando abaixo:

```bash

cat /etc/profile.d/fonts.sh
```

Para verificar se o Meslo Nerd Font foi instalado, execute o comando abaixo:

```bash

sudo reboot
```



#### Configurando o Powerlevel10k

Para configurar o Powerlevel10k, execute o comando abaixo:

```bash

p10k configure
```

#### Configurando o Oh My Zsh

Para configurar o Oh My Zsh, execute o comando abaixo:

```bash

nano ~/.zshrc
```

#### Configurando o Tema do Powerlevel10k

Para configurar o tema do Powerlevel10k, execute o comando abaixo:

```bash

nano ~/.p10k.zsh
```

#### Instalando plugins para o Oh My Zsh

##### Instalando o zsh-autosuggestions - Plugin para autocompletar comandos

Vamos criar diretório para os plugins:

```bash
cd
mkdir .zsh

```

Baiar o plugin:

```bash

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

```


Para iniciar o zsh-autosuggestions junto com zsh, execute o comando abaixo:

```bash

nano ~/.zshrc
```

Adicione o conteúdo abaixo:

```bash

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

```

Para verificar se o zsh-autosuggestions foi instalado, execute o comando abaixo:

```bash

ls -la ~/.zsh
```

reinicie o terminal ou execute o comando abaixo para carregar as configurações do zsh:

```bash

source ~/.zshrc
```








