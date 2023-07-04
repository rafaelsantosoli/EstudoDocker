# O que são containers?

`Containers` são ambientes `isolados` que possuem todos os recursos necessários para a `execução de um software`. Eles são criados a partir de `imagens`, que são arquivos de configuração que contém todas as instruções necessárias para a criação do container.

- Um pacote de código que pode executar uma ação, por exemplo, um container pode ser criado para `executar um servidor web, um banco de dados, um servidor de aplicação, etc`;

- Ou seja, nossos projetos serão executados dentro de containers que criamos e utilizamos;

- `Containers utilizam imagens` para poderem ser executados, ou seja, uma imagem é um arquivo de configuração que contém todas as instruções necessárias para a criação do container;

- Múltiplos containers podem ser criados a partir de uma mesma imagem;

- `Múltiplos containers podem rodar juntos`, exemplo: um container para o banco de dados, outro para o servidor web, outro para o servidor de aplicação, etc;


- `Containers utilizam o mesmo kernel do sistema operacional`, ou seja, não é necessário instalar um sistema operacional dentro do container, pois ele utiliza o mesmo kernel do sistema operacional que o hospeda;

