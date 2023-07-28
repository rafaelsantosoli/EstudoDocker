# O que é WSL 2?

O WSL 2 é a segunda geração do Windows Subsystem for Linux (WSL), um ambiente de execução do Linux para o Windows. O WSL 2 é um ambiente de execução separado do WSL 1, que utiliza um kernel Linux com uma máquina virtual leve (VM) para gerenciar os recursos do sistema operacional. O WSL 2 é executado em um ambiente virtualizado, mas fornece um desempenho aprimorado e uma experiência de usuário mais integrada com o Windows.

## Por que usar o WSL 2?

O WSL 2 é uma nova versão do WSL e é uma atualização automática. Como o WSL 2 é um ambiente de execução separado, você pode ter as duas versões `(WSL 1 e WSL 2)` no mesmo dispositivo e escolher qual usar por padrão. O WSL 2 é recomendado se você estiver executando um aplicativo que requer um kernel Linux completo e/ou se você estiver executando um aplicativo que interage com o hardware, a rede ou o sistema de arquivos, como Docker ou o FUSE.

As principais melhorias do WSL 2 são:

- Desempenho aprimorado: o desempenho do sistema de arquivos do WSL 2 é muito maior do que o do WSL 1. Isso significa que a leitura e gravação de arquivos será muito mais rápida e que você poderá executar aplicativos que exigem acesso ao sistema de arquivos com mais rapidez.
- Compatibilidade total do sistema de chamadas: o WSL 2 oferece uma compatibilidade completa do sistema de chamadas, o que permite executar mais aplicativos Linux no WSL 2, como Docker, NodeJS, etc.
- Suporte a aplicativos com várias plataformas: o WSL 2 oferece suporte a aplicativos com várias plataformas, como Docker, que podem ser executados no WSL 2 e acessar o sistema de arquivos do Windows.
- Melhor integração com o Windows: o WSL 2 oferece uma melhor integração com o Windows. Por exemplo, você pode executar comandos do WSL no Prompt de Comando ou no PowerShell e vice-versa. Além disso, você pode abrir arquivos do Windows no Linux usando o WSL.

## Requisitos do sistema

Para usar o WSL 2, você precisa atender aos seguintes requisitos:

- Windows 10, versão 2004 ou posterior (Build 19041 ou posterior) ou Windows 11
- Um sistema operacional de 64 bits
- Uma CPU com suporte a virtualização habilitada na BIOS
- Pelo menos 4 GB de RAM
- Pelo menos 64 GB de armazenamento disponível

Caso utilizando Windows 10 é necessário atualizar para a versão 2004 ou posterior (Build 19041 ou posterior).

Abaixo estão os links para download da atualização do Windows 10 2022 (versão 22H2):

[Atualização do Windows 10 2022 l versão 22H2](https://www.microsoft.com/pt-br/software-download/windows10)


## Comandos de instalação

### Instalando o WSL 2 através do PowerShell

- Abra o PowerShell como administrador e execute o comando abaixo:

```powershell

wsl --install

```
- Este comando habilitara os recurso necessários para executar o WSL e instala a distribuição Linux padrão (Ubuntu). 
  
Fonte: [Comando de instalação do WSL](https://learn.microsoft.com/pt-br/windows/wsl/install#install-wsl-command)

### Instalando o WSL 2 habilitando o recurso no Windows sem instalar a distribuição Linux padrão

Este método é recomendado para usuários que desejam instalar manualmente uma distribuição Linux diferente da padrão (Ubuntu).


#### Habilitando o subsistema do Windows para Linux (WSL)

Abra o PowerShell como administrador e execute o comando abaixo:

```powershell

$ dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

```
- Este comando habilita o recurso do WSL no Windows.
  - Detalhes do comando:
    - `dism.exe`: ferramenta de gerenciamento e manutenção de imagens de implantação do Windows.
    - `/online`: indica que o recurso será habilitado no sistema operacional atual.
    - `/enable-feature`: habilita o recurso.
    - `/featurename`: indica o nome do recurso que será habilitado.
    - `/all`: habilita todas as distribuições Linux disponíveis.
    - `/norestart`: evita que o computador seja reiniciado.


#### Habilitando o recurso de máquina virtual

Antes de instalar o WSL 2, você precisa habilitar o recurso de máquina virtual no Windows. Seu computador exigi um processador com suporte a virtualização para executar este recurso.


- Para habilitar o recurso de máquina virtual, execute o comando abaixo:

```powershell

$ dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

```
- Este comando habilita o recurso de máquina virtual no Windows.
  - Detalhes do comando:
    - `dism.exe`: ferramenta de gerenciamento e manutenção de imagens de implantação do Windows.
    - `/online`: indica que o recurso será habilitado no sistema operacional atual.
    - `/enable-feature`: habilita o recurso.
    - `/featurename`: indica o nome do recurso que será habilitado.
    - `/all`: habilita todas as distribuições Linux disponíveis.
    - `/norestart`: evita que o computador seja reiniciado.


- Reinicie o computador.

#### Baixando e instalando o pacote de atualização do kernel do Linux para o WSL2

- Baixe e instale o pacote de atualização do kernel do Linux para o WSL2:

Fonte: [Etapas de instalação manual para versões mais antigas do WSL](https://learn.microsoft.com/pt-br/windows/wsl/install-manual)

Para executar o WSL da microsoft Store com atualizações frequentes use os comandos:

```powershell

wsl --install

```

```powershell

wsl --update

```
#### Definindo o WSL2 como versão padrão

- Defina o WSL2 como versão padrão:

```powershell

wsl --set-default-version 2

```

#### Instalando a distribuição Linux de sua preferência

##### Instalando a distribuição Linux através da Microsoft Store
- Abra a Microsoft Store e instale a distribuição Linux de sua preferência.
- Após a instalação, abra a distribuição Linux e siga as instruções para configurar o usuário e senha.
- Após a configuração, a distribuição Linux estará pronta para uso.

Microsoft Store
![Microsoft Store](https://learn.microsoft.com/pt-br/windows/wsl/media/store.png)

Na página da distribuição, selecione "Obter"
![Obter](https://learn.microsoft.com/pt-br/windows/wsl/media/ubuntustore.png)

##### Instalando a distribuição Linux através do PowerShell

Também é possível instalar a distribuição Linux através do PowerShell, para isso, execute o comando abaixo:

```powershell

wsl --list --online

```

Este comando lista todas as distribuições Linux disponíveis para instalação.


Para instalar uma distribuição Linux, execute o comando abaixo:

```powershell

wsl --install -d <distribuição>

```

- A flag `-d` é opcional, com ela é possível renomear a distribuição Linux durante a instalação.

Exemplo:

```powershell

wsl --install -d Ubuntu

```

## Mover ou importar a instalação do WSL2 para outro local

1. Abra o PowerShell como administrador e execute o comando abaixo:

```powershell

wsl --list --verbose

```

2. Execute o comando abaixo para desligar o WSL2:

```powershell

wsl --shutdown

```

3. Execute o comando abaixo para exportar a instalação do WSL2 para um arquivo tar:

```powershell

wsl --export <distro_name> <file_name>

```
- Exemplo:

```powershell

wsl --export Ubuntu-20.04 ubuntu.tar

```
- No exemplo acima, o arquivo `ubuntu.tar` será criado no diretório atual.
- Caso deseje criar o arquivo em outro diretório, informe o caminho completo do arquivo.
  - Exemplo:

  ```powershell

  wsl --export Ubuntu-20.04 C:\Users\user\Documents\ubuntu.tar

  ```

  - Também é possível exportar a instalação do WSL2 para um arquivo tar compactado.

  ```powershell

  wsl --export Ubuntu-20.04 ubuntu.tar.gz

  ```
  Esta extensão é utilizada para criar arquivos compactados.


  - Ou utilizando a extenção vhd.

  ```powershell

  wsl --export Ubuntu-20.04 ubuntu.vhd

  ```
  Esta extensão é utilizada para criar discos virtuais.

1. Execute o comando abaixo para importar a instalação do WSL2 a partir de um arquivo tar:

```powershell

wsl --import <distro_name> <install_location> <file_name>

```

- Exemplo:

    ```powershell

    wsl --import Ubuntu-20.04 C:\Users\user\Documents\ubuntu.tar

    ```
  - Para arquivos com extensão .tar.gz, utilize o comando abaixo:

    ```powershell

    wsl --import Ubuntu-20.04 C:\Users\user\Documents\ubuntu.tar.gz

    ```

  - Para arquivos com extensão .vhd, utilize o comando abaixo:

    ```powershell

    wsl --import Ubuntu-20.04 C:\Users\user\Documents\ubuntu.vhd

    ```

1. Execute o comando abaixo para iniciar o WSL2:

```powershell

wsl

```

6. Execute o comando abaixo para verificar se o WSL2 foi iniciado:

```powershell

wsl --list --verbose

```



## Links para guia de instalação

- [Instalando o WSL](https://learn.microsoft.com/pt-br/windows/wsl/install)
- [Instalação Manual do WSL](https://learn.microsoft.com/pt-br/windows/wsl/install-manual)

