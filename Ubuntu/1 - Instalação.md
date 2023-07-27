# Instalando Linux Ubuntu com WSL2

## Instalando o WSL2

1. Abra o PowerShell como administrador e execute o comando abaixo:

```powershell

$ dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

```
- Este comando habilita o recurso do WSL no Windows.
- O parâmetro `/all` habilita todas as distribuições Linux disponíveis.
- O parâmetro `/norestart` evita que o computador seja reiniciado.
- O parâmetro `/online` indica que o recurso será habilitado no sistema operacional atual.
- O parâmetro `/featurename` indica o nome do recurso que será habilitado.
- O parâmetro `/enable-feature` habilita o recurso.


2. Execute o comando abaixo para habilitar o recurso de máquina virtual:

```powershell

$ dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

```
- Este comando habilita o recurso de máquina virtual no Windows.
- O parâmetro `/all` habilita todas as distribuições Linux disponíveis.
- O parâmetro `/norestart` evita que o computador seja reiniciado.
- O parâmetro `/online` indica que o recurso será habilitado no sistema operacional atual.
- O parâmetro `/featurename` indica o nome do recurso que será habilitado.
- O parâmetro `/enable-feature` habilita o recurso.

1. Reinicie o computador.

2. Baixe e instale o pacote de atualização do kernel do Linux para o WSL2:

[https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

3. Caso já possua wls2, verifique se possui a versão mais recente do kernel do Linux:

```powershell

wsl --list --verbose

```
Para atualizar o kernel do Linux, execute o comando abaixo:

```powershell

wsl --update

```

5. Defina o WSL2 como versão padrão:

```powershell

wsl --set-default-version 2

```

6. Verifique se o WSL2 está definido como padrão:

```powershell

wsl --list --verbose

```

### Possíveis erros:

Erro de comando não encontrado:

```powershell

wsl : O termo 'wsl' não é reconhecido como nome de cmdlet, função, arquivo de script ou programa operável. Verifique a grafia do nome ou, se um caminho tiver sido incluído, veja se o caminho está correto e tente novamente.

```

Solução:

- Execute o comando abaixo para verificar se o WSL está habilitado:

```powershell

Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

```

- Caso o comando acima retorne o valor `False`, execute o comando abaixo para habilitar o WSL:

```powershell

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

```

- Em seguida, execute o comando abaixo para verificar se o WSL foi habilitado:

```powershell

Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

```

- Caso o comando acima retorne o valor `True`, execute o comando abaixo para verificar se o WSL2 está definido como padrão:

```powershell

wsl --list --verbose

```




## Instalando o Ubuntu

1. Abra terminal do Windows (PowerShell) e execute o comando abaixo para listar as distribuições Linux disponíveis:

```powershell

wsl --list --online

```

2. Execute o comando abaixo para instalar o Ubuntu:

```powershell

wsl --install <distro_name>

```

- `wsl`: Comando para executar o WSL.
- `--install`: Instala a última versão do kernel do Linux para o WSL2.
- `<distro_name>`: Nome da distribuição Linux que será instalada.

3. Como exemplo, estaremos instalando o Ubuntu-22.04 através do comando abaixo:
  
  ```powershell

  wsl --install --distribution Ubuntu-22.04

  ```
  - Este comando instala a última versão do kernel do Linux para o WSL2 e a distribuição Ubuntu-22.04.

  - Ao executá-lo, será apresentado um prompt conforme abaixo, solicitando um usuário para o Ubuntu:

  ```powershell	
  C:\Users\thite> wsl --install --distribution Ubuntu-22.04

      Ubuntu 22.04 LTS já está instalado.
      Iniciando Ubuntu 22.04 LTS...
      Installing, this may take a few minutes...
      Please create a default UNIX user account. The username does not need to match your Windows username.
      For more information visit: https://aka.ms/ wslusers
      Enter new UNIX username: tmoreira
```

  - Neste exemplo, foi criado o usuário 'tmoreira'. Em seguida, será solicitado uma senha para o usuário recém-criado:

  ```powershell
  New password:
  Retype new password:
  passwd: password updated successfully
  Installation successful!
  ```
  - Após digitar a senha e confirmá-la, será criado o usuário e apresentará a mensagem `Installation successful!` indicando que a instalação foi concluída com sucesso.


4. Execute o comando abaixo para verificar se o Ubuntu foi instalado:

```powershell

wsl --list --verbose

```

5. Execute o comando abaixo para iniciar o Ubuntu:

```powershell

ubuntu2204

```
ou
  
  ```powershell
  start ubuntu2204.exe
  ```
  

## Atualizando o Ubuntu

1. Execute o comando abaixo para verificar a versão do Ubuntu:   

```bash

lsb_release -a

```

2. Execute o comando abaixo para atualizar o Ubuntu:

```bash

sudo apt update && sudo apt upgrade -y

```

Explicando o comando acima:

- `sudo`: Executa o comando como administrador.
- `apt`: Gerenciador de pacotes do Ubuntu.
- `update`: Atualiza a lista de pacotes disponíveis.
- `&&`: Executa o próximo comando se o comando anterior for executado com sucesso.
- `upgrade`: Atualiza os pacotes instalados.
- `-y`: Confirma todas as perguntas feitas durante a atualização.


## Definindo systemd como gerenciador de serviços

Para definir que o systemd será o gerenciador de serviços do Ubuntu, execute os comandos:

- `sudo nano /etc/wsl.conf`: Abre o arquivo wsl.conf para edição.
- Verifique se o arquivo possui o conteúdo abaixo:
  - [Boot]
  - systemd=true

  - Caso queira que WSL inicialize com algum usuário específico, adicione a linha abaixo:
    - [User]
    - Default=<user_name>
    - Substitua `<user_name>` pelo nome do usuário que deseja que o WSL inicie.


- Caso o arquivo não possua o conteúdo acima, adicione-o ao arquivo e salve as alterações.
- Para salvar as alterações, pressione as teclas `Ctrl + X` e depois pressione a tecla `Y` para confirmar a gravação das alterações.

- Reinicie o Ubuntu para aplicar as alterações.

```bash	
sudo reboot
```


 ![Alt text](/Ubuntu/Imagens/wsl.conf.png)








- Execute o comando `systemctl list-units-files` para verificar se o systemd está instalado:

```bash

systemctl list-unit-files

```

Explicando o comando acima:

- `systemctl`: Comando para gerenciar serviços.
- `list-unit-files`: Lista os serviços instalados.
- `list-unit-files --type=service`: Lista os serviços instalados.
- `list-unit-files --type=service --state=enabled`: Lista os serviços instalados e habilitados.
- `list-unit-files --type=service --state=disabled`: Lista os serviços instalados e desabilitados.
- `list-unit-files --type=service --state=masked`: Lista os serviços instalados e mascarados. 



## Mover a instalação do WSL2 para outro local

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


# Referências
[O Guia DEFINITIVO de UBUNTU para Devs Iniciantes](https://www.youtube.com/watch?v=CouuH3W6ZtA)
[O Melhor Setup Dev com Arch e WSL2](https://www.youtube.com/watch?v=sjrW74Hx5Po&t=989s)
[Windows Subsystem for Linux setup WSL2 Systemd, Ansible, and Kubernetes](https://www.youtube.com/watch?v=CouuH3W6ZtA)