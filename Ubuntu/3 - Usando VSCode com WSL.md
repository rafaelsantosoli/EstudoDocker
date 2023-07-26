# Usando VSCode com WSL2

## Conectando VSCode com a distribuição Linux - WSL2

### Pré-Requisitos

- VSCode instalado no Windows

- WSL2 com alguma distro instalada (No exemplo, utilizaremos Ubuntu 22.04)

- [Plugin WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) instalado no VSCode

### Configurando a conexão do VSCode com o WSL2

- Após instalar o [Plugin WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl), será apresentado um ícone no canto inferior esquerdo do VSCode:
![Alt text](/Ubuntu/Imagens/image-6.png)

- Ao clicar no ícone, será apresentado um menu. Selecione a opção 'Connect to WSL using Distro...':	
![Alt text](/Ubuntu/Imagens/image-7.png)

- Em seguida, selecione a distro que deseja conectar. No nosso caso, será a distribuição Ubuntu-22.04:
![Alt text](/Ubuntu/Imagens/image-8.png)

- Verifique se apareceu o seu usuário do linux no terminal do VSCode. No nosso caso, o usuário é 'tmoreira':
![Alt text](/Ubuntu/Imagens/image-9.png)

- Com isso, será possível utilizar o VSCode a partir da sua distro WSL2.

## Informações adicionais

#### Acessando as pastas do Linux através do Windows Explorer

- Abra o Windows Explorer e digite o endereço abaixo na barra de navegação:

```bash
\\wsl$
```

- Em seguida, acesse a pasta da distribuição Linux que deseja acessar. No nosso caso, será a pasta Ubuntu-22.04

![Alt text](/Ubuntu/Imagens/image.png)

- Depois, acesse a pasta '/home'. Nela será apresentada uma pasta contendo o nome de usuário criado no momento de instalação da distribuição Linux no WSL2. No nosso caso, o nome do usuário é 'tmoreira'.
![Alt text](/Ubuntu/Imagens/image-1.png)

- Crie uma pasta chamada 'win_shared', ou com o nome que desejar, dentro da pasta do usuário. Esta pasta será utilizada para armazenar os projetos que serão desenvolvidos no VSCode.

![Alt text](/Ubuntu/Imagens/image-2.png)

- No seu terminal Linux, digite o comando abaixo para checar a criação com sucesso da pasta da etapa anterior:
    
    ```bash
    $ ls -la
    ```
    ![Alt text](/Ubuntu/Imagens/image-3.png)


#### Acessando as pastas do Windows através do Linux

- No terminal do linux, digite os comandos a seguir:

```bash	
$ cd /mnt/
$ ls -la
```

- Esse comando irá apresentar todos os drives do Windows. No nosso caso, o drive 'c' é o que contém os arquivos do Windows.
![Alt text](/Ubuntu/Imagens/image-4.png)

- Para criar uma pasta no drive 'c' do windows, digite os comandos abaixo. Caso queira, é possível alterar o nome 'linux_shared' para o nome que desejar.

```bash
$ cd /mnt/c
$ mkdir linux_shared
```

- Após execução do comando de criação de pasta, navegue até a pasta através do Windows Explorer para verificar se deu certo:
![Alt text](/Ubuntu/Imagens/image-5.png)