# Comandos Básicos Linux Arch

This markdown file contains basic Linux commands for Arch Linux. It includes commands for installing, updating, and uninstalling packages, as well as listing directories and cleaning up the system. 

The commands are organized by their purpose and include examples of how to use them. 

Documentation comments have been added to each command to explain what it does and how to use it. 

Use this file as a reference when working with Arch Linux.
Comandos Básicos Linux Arch

# Instalar Pacotes

```bash

sudo pacman -S nome_do_pacote

```

# Atualizar Pacotes

```bash

sudo pacman -Syu

```

# Instalar Pacotes do AUR

```bash

yay -S nome_do_pacote

```

# Atualizar Pacotes do AUR

```bash

yay -Syu

```

# Instalar Pacotes Flatpak

```bash

flatpak install nome_do_pacote

```

# Atualizar Pacotes Flatpak

```bash

flatpak update

```

# Instalar Pacotes Snap

```bash

sudo snap install nome_do_pacote

```

# Atualizar Pacotes Snap

```bash

sudo snap refresh

```

# Instalar Pacotes AppImage

```bash

sudo chmod +x nome_do_pacote.AppImage

```

# Instalar Pacotes AppImage

```bash

sudo chmod +x nome_do_pacote.AppImage

```

# Instalar Pacotes AppImage

```bash

sudo chmod +x nome_do_pacote.AppImage

```

# listar pacotes instalados

```bash

pacman -Q

```

# Listar diretórios

```bash

ls

```

# Listar diretórios com detalhes

```bash

ls -l

```

# Listar diretórios com detalhes e ocultos

```bash

ls -la

```

# Desinstalar pacotes

```bash

sudo pacman -R nome_do_pacote

```

# Desinstalar pacotes e suas dependências

```bash

sudo pacman -Rs nome_do_pacote

```

# Desinstalar pacotes e suas dependências não utilizadas

```bash

sudo pacman -Rns nome_do_pacote

```

# Desinstalar pacotes e suas dependências não utilizadas e arquivos de configuração

```bash

sudo pacman -Rnsc nome_do_pacote

```

# Desinstalar pacotes e suas dependências não utilizadas e arquivos de configuração e arquivos de usuário

```bash

sudo pacman -Rnscu nome_do_pacote

```

# Limpar donwloads

```bash

sudo pacman -Sc

```

# Limpar cache

```bash

sudo pacman -Scc

```

# Limpar cache e pacotes não utilizados

```bash

sudo pacman -Scc && sudo pacman -Rns $(pacman -Qtdq)

```

# Limpar cache e pacotes não utilizados e arquivos de configuração

```bash

sudo pacman -Scc && sudo pacman -Rnsc $(pacman -Qtdq)

```

# Limpar cache e pacotes não utilizados e arquivos de configuração e arquivos de usuário

```bash

sudo pacman -Scc && sudo pacman -Rnscu $(pacman -Qtdq)

```

# Limpar cache e pacotes não utilizados e arquivos de configuração e arquivos de usuário e pacotes do AUR

```bash

sudo pacman -Scc && sudo pacman -Rnscu $(pacman -Qtdq) && yay -Sc

```

# Limpar cache e pacotes não utilizados e arquivos de configuração e arquivos de usuário e pacotes do AUR e pacotes Flatpak

```bash

sudo pacman -Scc && sudo pacman -Rnscu $(pacman -Qtdq) && yay -Sc && flatpak uninstall --unused

```

# Limpar cache e pacotes não utilizados e arquivos de configuração e arquivos de usuário e pacotes do AUR e pacotes Flatpak e pacotes Snap

```bash

sudo pacman -Scc && sudo pacman -Rnscu $(pacman -Qtdq) && yay -Sc && flatpak uninstall --unused && sudo snap refresh

```





