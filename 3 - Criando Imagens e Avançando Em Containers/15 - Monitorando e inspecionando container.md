# Verificar informações de processamento do container

 - Podemos monitorar os containers em execução, para verificar o consumo de memória, processamento e outros recursos.

- Podemos inspecionar um container em execução, para verificar as informações de processamento, memória, rede, etc.

## Monitorar os containers

- O comando docker stats, mostra as informações de processamento, memória, rede, etc, dos containers em execução.

- Para verificar as informações de processamento do container, podemos utilizar o comando `docker stats` e o nome do container.
  - Comando: `docker stats <nome do container>`
  - Exemplo: `docker stats webserver`
  - Retorna informações de processamento do container em tempo real.
  - Para sair, basta pressionar `CTRL + C`.
  - Para sair e continuar o container, basta pressionar `CTRL + P + Q`.
  - Para sair e parar o container, basta pressionar `CTRL + D`.

### Top do container - Execução de processos

O comando docker top, mostra os processos que estão sendo executados dentro do container.

- Para verificar a execução de um container, podemos utilizar o comando `docker top` e o nome do container.
  - Comando: `docker top <nome do container>`
  - Exemplo: `docker top webserver`
    - exemplo de retorno: `running`
    - Retorna informações de processamento do container em tempo real.
    - Para sair, basta pressionar `CTRL + C`.
  - Retorna informações de processamento do container em tempo real.  

### Logs do container

- Para verificar os logs de um container, podemos utilizar o comando `docker logs` e o nome do container.
  - Comando: `docker logs <nome do container>`
  - Exemplo: `docker logs webserver`
    - exemplo de retorno: `running`
    - Retorna os logs do container.
    - Para sair, basta pressionar `CTRL + C`.
  - Retorna os logs do container.
  - Para sair, basta pressionar `CTRL + C`.
  - Para sair e continuar o container, basta pressionar `CTRL + P + Q`.
  - Para sair e parar o container, basta pressionar `CTRL + D`.

## Inspecionar container

- podemos inspecionar um container em execução, para verificar as informações de processamento, memória, rede, etc.

- Use o comando `docker inspect` e o nome do container.
- Para mais informações, use o comando `docker inspect --help`.

### Consultar informações do container

- Para verificar as informações de um container, podemos utilizar o comando `docker inspect` e o nome do container.
  - Comando: `docker inspect <nome do container>`
  - Exemplo: `docker inspect webserver`
    - exemplo de retorno: `running`
    - Retorna as informações do container em formato JSON.
    - Para verificar os formatos disponíveis, basta executar o comando `docker inspect --help`.
  - Retorna as informações do container em formato JSON.

### Consultar informações do container - Formato filtrado

- Podemos filtrar as informações do container, para retornar apenas as informações que desejamos.

- Para verificar as informações de um container, podemos utilizar o comando `docker inspect` e o nome do container.
  - Comando: `docker inspect --format='{{.State.Status}}' <nome do container>`
  - Exemplo: `docker inspect --format='{{.State.Status}}' webserver`
    - Exemplo de retorno: `running`
    - Retorna as informações do container em formato JSON.
    - Para verificar os formatos disponíveis, basta executar o comando `docker inspect --help`.
  - Retorna as informações do container em formato JSON.

## Consultar consumo de memória do container

- Para verificar o consumo de memória de um container, podemos utilizar o comando `docker inspect` e o nome do container.
  - Comando: `docker inspect --format='{{.HostConfig.Memory}}' <nome do container>`
    - Explicando:
      - `--format=`: Formato de saída.
      - `{{.HostConfig.Memory}}`: Informação que será retornada.
      - `<nome do container>`: Nome do container.      
    
  - Exemplo: `docker inspect --format='{{.HostConfig.Memory}}' webserver`
    - Exemplo de retorno: `running`
    - Retorna as informações do container em formato JSON.
    - Para verificar os formatos disponíveis, basta executar o comando `docker inspect --help`.
  - Retorna as informações do container em formato JSON.

- Os formatos de saída da flag `--format` são:
- `{{.ID}}`: ID do container.
- `{{.Created}}`: Data de criação do container.
- `{{.State.Status}}`: Status do container.
- `{{.NetworkSettings.IPAddress}}`: IP do container.
- `{{.HostConfig.Memory}}`: Memória do container.
- `{{.HostConfig.CPUShares}}`: Processamento do container.
- `{{.Config.Image}}`: Imagem do container.
- `{{.Config.Env}}`: Variáveis de ambiente do container.
- `{{.Config.Entrypoint}}`: Entrypoint do container.
- `{{.Config.Cmd}}`: Comando executado pelo container.
- `{{.Config.Labels}}`: Labels do container.
- `{{.Config.Volumes}}`: Volumes do container.
- `{{.Config.ExposedPorts}}`: Portas expostas pelo container.
- `{{.Config.WorkingDir}}`: Diretório de trabalho do container.
- `{{.Config.User}}`: Usuário do container.
- `{{.Config.Hostname}}`: Hostname do container.
- `{{.Config.Domainname}}`: Domainname do container.
- `{{.Config.MacAddress}}`: MacAddress do container.
- `{{.Config.StopSignal}}`: Sinal de parada do container.
- `{{.Config.StopTimeout}}`: Tempo de parada do container.
- `{{.Config.Healthcheck}}`: Healthcheck do container.
- `{{.Config.OnBuild}}`: OnBuild do container.
- `{{.Config.Shell}}`: Shell do container.

- 