# Comandos Básicos WSL

Este arquivo contém uma lista de comandos básicos para o Windows Subsystem for Linux (WSL).

- `wsl --list`: Lista todas as distribuições WSL instaladas.
- `wsl --set-version <distro> 2`: Atualiza uma distribuição WSL para a versão 2.
- `wsl --shutdown`: Desliga todas as distribuições WSL em execução.
- `wsl --terminate <distro>`: Encerra uma distribuição WSL em execução.
- `wsl --export <distro> <file>`: Exporta uma distribuição WSL para um arquivo tar.
- `wsl --import <distro> <file> <options>`: Importa uma distribuição WSL a partir de um arquivo tar.
- `wsl --user <username>`: Altera o usuário padrão para uma distribuição WSL.
- `wsl --exec <distro> <command>`: Executa um comando em uma distribuição WSL.
- `wsl --install`: Instala a última versão do kernel do Linux para o WSL2.
- `wsl --update`: Atualiza o kernel do Linux para a última versão disponível.
- `wsl --status`: Exibe informações sobre o estado atual do WSL.
- `wsl --help`: Exibe a ajuda do WSL.
- `wsl --help <command>`: Exibe a ajuda de um comando específico do WSL.
- 