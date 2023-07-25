# Instalando Git no Ubuntu

## Configurações iniciais

### Criação de usuário

- No terminal Linux, conforme configurado na etapa anterior, execute o comando abaixo para criar um usuário. No nosso caso, o nome do usuário será 'git':

```bash
sudo adduser git
```

- Será apresentado um retorno conforme abaixo no console:

```bash
tmoreira@CASTLEVANIA:/mnt/c$ sudo adduser git
[sudo] password for tmoreira:
Adding user `git' ...
Adding new group `git' (1001) ...
Adding new user `git' (1001) with group `git' ...
Creating home directory `/home/git' ...
Copying files from `/etc/skel' ...
New password:
Retype new password:
passwd: password updated successfully
Changing the user information for git
Enter the new value, or press ENTER for the default
        Full Name []: Git
        Room Number []:
        Work Phone []:
        Home Phone []:
        Other []:
Is the information correct? [Y/n]
```

### Dando Privilégios de sudo (Administrativos) ao usuário

- Execute o comando abaixo para dar privilégios de sudo ao usuário criado:

```bash
usermod -aG sudo git
``` 

