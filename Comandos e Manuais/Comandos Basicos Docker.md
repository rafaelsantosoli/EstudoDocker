# Comandos Docker  


Este arquivo contém uma lista de comandos básicos do Docker para gerenciamento de containers e imagens.

## Listar containers em execução

Para listar os containers em execução utilizamos o comando `docker ps`.

Para listar todos os containers, incluindo os que não estão em execução, utilizamos o comando `docker ps -a`.

## Listar imagens

Para listar as imagens que temos no host utilizamos o comando `docker images`.

## Baixar imagem do Docker Hub

Para baixar uma imagem do Docker Hub utilizamos o comando `docker pull`.

Exemplo: `docker pull debian`

O comando `docker pull debian` vai baixar a imagem debian do Docker Hub.

## Remover imagem

Para remover uma imagem do host utilizamos o comando `docker rmi`.

Exemplo: `docker rmi debian`

O comando `docker rmi debian` vai remover a imagem debian do host.

## Remover container

Para remover um container do host utilizamos o comando `docker rm`.

Exemplo: `docker rm 1234567890`

O comando `docker rm 1234567890` vai remover o container 1234567890 do host.

## Parar container

Para parar um container utilizamos o comando `docker stop`.

Exemplo: `docker stop 1234567890`

O comando `docker stop 1234567890` vai parar o container 1234567890.

## Iniciar container

Para iniciar um container utilizamos o comando `docker start`.

Exemplo: `docker start 1234567890`

O comando `docker start 1234567890` vai iniciar o container 1234567890.

## Executar comando dentro de um container

Para executar um comando dentro de um container utilizamos o comando `docker exec`.

Exemplo: `docker exec 1234567890 ls -l`

O comando `docker exec 1234567890 ls -l` vai executar o comando `ls -l` dentro do container 1234567890.

## Executar container em modo interativo

Para executar um container em modo interativo utilizamos o comando `docker run -it`.

Exemplo: `docker run -it debian bash`

O comando `docker run -it debian bash` vai executar o container debian em modo interativo com o bash.

## Executar container em modo daemon

Para executar um container em modo daemon utilizamos o comando `docker run -d`.

Exemplo: `docker run -d debian sleep 1000`

O comando `docker run -d debian sleep 1000` vai executar o container debian em modo daemon com o comando sleep 1000.

## Mapear porta do container para o host

Para executar um container em modo daemon e mapear uma porta utilizamos o comando `docker run -d -p`.

Exemplo: `docker run -d -p 8080:80 nginx`

O comando `docker run -d -p 8080:80 nginx` vai executar o container nginx em modo daemon e mapear a porta 80 do container para a porta 8080 do host.

## Mapear volume do host para o container

Para executar um container em modo daemon e mapear um volume utilizamos o comando `docker run -d -v`.

Exemplo: `docker run -d -v /home/rodrigo:/var/www/html nginx`

O comando `docker run -d -v /home/rodrigo:/var/www/html nginx` vai executar o container nginx em modo daemon e mapear o diretório `/home/rodrigo` do host para o diretório `/var/www/html` do container.

## Mapear porta e volume do host para o container

Para executar um container em modo daemon e mapear um volume e uma porta utilizamos o comando `docker run -d -p -v`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html nginx`

O comando `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html nginx` vai executar o container nginx em modo daemon e mapear a porta 80 do container para a porta 8080 do host e mapear o diretório `/home/rodrigo` do host para o diretório `/var/www/html` do container.

## Definir nome do container

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container utilizamos o comando `docker run -d -p -v --name`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server nginx`

O comando `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server nginx` vai executar o container nginx em modo daemon e mapear a porta 80 do container para a porta 8080 do host e mapear o diretório `/home/rodrigo` do host para o diretório `/var/www/html` do container e definir o nome `nginx-server` para o container.

## Definir hostname do container

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container e definir um hostname para o container utilizamos o comando `docker run -d -p -v --name --hostname`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server --hostname nginx-server nginx`

O comando `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server --hostname nginx-server nginx` vai executar o container nginx em modo daemon e mapear a porta 80 do container para a porta 8080 do host e mapear o diretório `/home/rodrigo` do host para o diretório `/var/www/html` do container e definir o nome `nginx-server` para o container e definir o hostname `nginx-server` para o container.

## Definir IP do container

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container e definir um hostname para o container e definir um IP para o container utilizamos o comando `docker run -d -p -v --name --hostname --ip`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server --hostname nginx-server --ip`

## Definir DNS do container

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container e definir um hostname para o container e definir um IP para o container e definir um DNS para o container utilizamos o comando `docker run -d -p -v --name --hostname --ip --dns`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server --hostname nginx-server --ip --dns`

## Definir DNS Search do container

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container e definir um hostname para o container e definir um IP para o container e definir um DNS para o container e definir um DNS Search para o container utilizamos o comando `docker run -d -p -v --name --hostname --ip --dns --dns-search`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server --hostname nginx-server --ip --dns --dns-search`

## Definir variável de ambiente do container

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container e definir um hostname para o container e definir um IP para o container e definir um DNS para o container e definir um DNS Search para o container e definir uma variável de ambiente para o container utilizamos o comando `docker run -d -p -v --name --hostname --ip --dns --dns-search -e`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server --hostname nginx-server --ip --dns --dns-search -e`

## Definir variável de ambiente do container com valor

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container e definir um hostname para o container e definir um IP para o container e definir um DNS para o container e definir um DNS Search para o container e definir uma variável de ambiente para o container com um valor utilizamos o comando `docker run -d -p -v --name --hostname --ip --dns --dns-search -e`.

Exemplo: `docker run -d -p 8080:80 -v /home/rodrigo:/var/www/html --name nginx-server --hostname nginx-server --ip --dns --dns-search -e`

## Definir variável de ambiente do container com valor e variável de ambiente do host

Para executar um container em modo daemon e mapear um volume e uma porta e definir um nome para o container e definir um hostname para o container e definir um IP para o container e definir um DNS para o container e definir um DNS Search para o container e definir uma variável de ambiente para o container com um valor e definir uma variável de ambiente do host utilizamos o comando `docker run -d -p -v --name --hostname --ip --dns --dns-search -e -e`.


A self-sufficient runtime for containers

Common Commands:
  run         Create and run a new container from an image
  exec        Execute a command in a running container
  ps          List containers
  build       Build an image from a Dockerfile
  pull        Download an image from a registry
  push        Upload an image to a registry
  images      List images
  login       Log in to a registry
  logout      Log out from a registry
  search      Search Docker Hub for images
  version     Show the Docker version information
  info        Display system-wide information

Management Commands:
  builder     Manage builds
  buildx*     Docker Buildx (Docker Inc., v0.10.5)
  compose*    Docker Compose (Docker Inc., v2.18.1)
  container   Manage containers
  context     Manage contexts
  dev*        Docker Dev Environments (Docker Inc., v0.1.0)
  extension*  Manages Docker extensions (Docker Inc., v0.2.19)
  image       Manage images
  init*       Creates Docker-related starter files for your project (Docker Inc., v0.1.0-beta.4)
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  plugin      Manage plugins
  sbom*       View the packaged-based Software Bill Of Materials (SBOM) for an image (Anchore Inc., 0.6.0)
  scan*       Docker Scan (Docker Inc., v0.26.0)
  scout*      Command line tool for Docker Scout (Docker Inc., v0.12.0)
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Swarm Commands:
  swarm       Manage Swarm

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  wait        Block until one or more containers stop, then print their exit codes

Global Options:
      --config string      Location of client config files (default
                           "C:\\Users\\rafae\\.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket to connect to
  -l, --log-level string   Set the logging level ("debug", "info",
                           "warn", "error", "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "C:\\Users\\rafae\\.docker\\ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "C:\\Users\\rafae\\.docker\\cert.pem")
      --tlskey string      Path to TLS key file (default
                           "C:\\Users\\rafae\\.docker\\key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Run 'docker COMMAND --help' for more information on a command.

For more help on how to use Docker, head to https://docs.docker.com/go/guides/