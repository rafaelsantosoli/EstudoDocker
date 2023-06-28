## 1. O que é Docker?

Docker é uma plataforma de software que permite criar, testar e implantar aplicativos rapidamente. O Docker empacota software em unidades padronizadas chamadas contêineres que incluem tudo o que o software precisa para ser executado, incluindo bibliotecas, ferramentas de sistema, código e tempo de execução. Usando o Docker, você pode implantar e dimensionar rapidamente aplicativos em qualquer ambiente e ter a certeza de que seu código será executado.

## 2. O que é um contêiner?

Um contêiner é uma unidade padrão de software que empacota o código e todas as suas dependências para que o aplicativo seja executado de forma rápida e confiável de um ambiente de computação para outro. Um contêiner padrão inclui o código, tempo de execução, ferramentas de sistema, bibliotecas do sistema e configurações. Os contêineres isolam o software uns dos outros e garantem que eles funcionem de maneira eficaz, independentemente do ambiente em que estejam sendo executados.

## 3. O que é uma imagem?

Uma imagem Docker é um modelo somente leitura. Por exemplo, uma imagem pode conter um sistema operacional Ubuntu com Apache e seu aplicativo. As imagens são usadas para criar contêineres Docker. O Docker fornece ferramentas adicionais para trabalhar com imagens.

## 4. O que é um registro?

Um registro é um repositório de imagens Docker. O Docker Hub é um registro hospedado na nuvem que permite que você baixe imagens Docker públicas disponíveis em um repositório central. O Docker está configurado para procurar imagens no Docker Hub por padrão. Você pode até executar seu próprio registro privado.

## 5. O que é Dockerfile?

Um Dockerfile é um arquivo de texto que contém todas as instruções necessárias para criar uma imagem Docker. O Docker cria imagens automaticamente lendo as instruções de um Dockerfile. Um Dockerfile consiste em várias instruções e cada instrução cria uma camada na imagem. Quando você altera o Dockerfile e reconstrói a imagem, apenas as camadas que foram alteradas são reconstruídas. Isso é parte do que torna os contêineres tão leves, pequenos e rápidos, quando comparados a máquinas virtuais.

## 6. O que é Docker Compose?

O Docker Compose é uma ferramenta que permite definir e executar aplicativos Docker multicontêiner com facilidade. Com o Compose, você usa um arquivo YAML para configurar os serviços do seu aplicativo. Em seguida, com um único comando, você cria e inicia todos os serviços de sua configuração. Para saber mais sobre todas as características do Compose, consulte a lista de recursos do Compose.

## 7. O que é Docker Swarm?

O Docker Swarm é uma ferramenta e um kit de ferramentas nativo do Docker para transformar os nós Docker em um cluster de vários nós. O Docker Swarm serve para gerenciar e orquestrar um cluster de contêineres Docker, fornecendo uma API unificada para interagir com eles. O Docker Swarm permite que você aumente o número de contêineres de maneira rápida e fácil, usando um modelo de programação simples e declarativo para criar e dimensionar serviços em um cluster de nós Docker.

## 8. O que é Docker Engine?

O Docker Engine é uma tecnologia de contêiner de código aberto para criar contêineres leves e portáteis que executam aplicativos em máquinas Linux, Windows e macOS. O Docker Engine foi lançado pela primeira vez em 2013 e é desenvolvido pela Docker, Inc.

## 9. O que é Docker Hub?

O Docker Hub é um serviço baseado em nuvem para compartilhar imagens de contêiner e desenvolver aplicativos em contêiner, com suporte para colaboração em equipe, automatização de fluxo de trabalho e integração contínua. Os desenvolvedores podem usar o Docker Hub para armazenar imagens públicas ou privadas, automatizar o fluxo de trabalho e gerenciar o ciclo de vida de seus contêineres.

## 10. O que é Docker Daemon?

O Docker Daemon é um serviço que é executado no host do sistema operacional. O daemon gerencia a criação, execução e destruição de contêineres Docker. O daemon também gerencia a construção e a execução de objetos Docker. O daemon ouve as solicitações da API Docker e gerencia os objetos Docker, como imagens, contêineres, redes e volumes.

## 11. O que é Docker Client?

O Docker Client é a principal maneira pela qual muitos usuários interagem com o Docker. Quando você usa comandos como docker run, o cliente envia esses comandos para o daemon, que os executa. O cliente Docker pode se comunicar com mais de um daemon.

## 12. O que é Docker Machine?

O Docker Machine é uma ferramenta que permite instalar o Docker Engine em computadores virtuais locais e hospedados na nuvem e gerenciar os hosts Docker com o Docker Machine comandos. Você pode usar o Docker Machine para instalar o Docker Engine em um ou mais hosts locais ou remotos. O Docker Machine é um driver de máquina Docker que permite que você provisione hosts Docker em seu computador local, em provedores de nuvem ou em máquinas virtuais locais.

