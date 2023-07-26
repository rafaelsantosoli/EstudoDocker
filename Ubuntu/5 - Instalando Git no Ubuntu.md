# Instalando Git no Ubuntu

## Configurações iniciais
- Antes de instalar o Git, é necessário atualizar os pacotes do sistema. Para isso, execute o comando abaixo:

```bash
sudo apt-get update && sudo apt get upgrade
```

## Configurando o Git
- A maioria das distribuições Linux já vem com o Git instalado, mas caso não tenha, execute o comando abaixo para instalar:

```bash
sudo apt-get install git
```

- Para verificar a versão do Git instalada, execute o comando abaixo:

```bash
git --version
```

- Para configurar os parâmetros mandatórios, utilize os comandos abaixo:

```bash
git config --global user.name "Seu Nome"
git config --global user.email "Seu email"
```

- Para verificar as configurações, execute o comando abaixo:

```bash
git config --list
```

- Você também pode querer trocar o nome da sua branch. Por padrão, o nome é "master", mas você pode renomeá-la para "main" com o comando abaixo:

```bash
git config --global init.defaultBranch main
```

- Outra configuração que você pode querer modificar é a do editor padrão do Git. O editor de texto padrão associado é o Vim, mas você pode alterar para o editor de sua preferência. No exemplo abaixo, vamos alterar para o 'nano'':

```bash
git config --global core.editor "nano"
```
