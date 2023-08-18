# Trilha de estudo de qualidade de software

## TESTE DE SOFTWARE, RELATÓRIO DE BUG, TIPOS E TÉCNICAS DE TESTE

O que é teste de software e como planejar, avaliar e escolher a abordagem certa, o que são bugs, falhas e erros, como evitá-los, princípios, tipos e técnicas de testes e como medir a qualidade de um software.

- 7 princípios de teste
  - Teste mostra a presença de defeitos
  - Teste exaustivo é impossível
  - Teste antecipado
  - Agrupamento de defeitos
  - Paradoxo do pesticida
  - Teste depende do contexto
  - A Ilusão da ausência de erros
- Medindo a qualidade do software
- Principais Termos
  - Defeito - Também conhecido como bug, manifestação de um erro.  
  - Erro - Também conhecido como engano, é quando o desenvolvedor faz algo errado.
  - Falha - É a diferença entre o resultado esperado e o resultado real. (defeito + erro)
- Teste de caixa preta e caixa branca
  - Fundamentos de teste de caixa preta
  - Técnicas de teste de caixa preta
    - Teste de equivalência
    - Teste de partição de valor limite
    - Teste de tabela de decisão
    - Teste de estado de transição
    - Teste de grafos de causa e efeito
    - Teste de caso de uso
  - Fundamentos de teste de caixa branca
  - Técnicas de teste de caixa branca
    - Teste de cobertura de instruções
    - Teste de cobertura de decisão
    - Teste de cobertura de condição
    - Teste de cobertura de caminho
  - Teste de caixa cinza  
- Teste baseado na experiência
- Planejamento de teste e controle de qualidade
  - Planejamento de teste
    - Determina o escopo do teste
    - Determina o objetivo do teste
    - Determina os risos do teste
    - Determina os recursos requeridos
    - Determina o cronograma do teste
    - Determina as atividades do teste
    - Determina as ferramentas do teste
    - Determina os critérios de entrada e saída
  - Controle de qualidade
    - Determina o que será testado
    - Determina o que não será testado
    - Determina o que será entregue
    - Determina o que não será entregue
    - Determina o que será aceito
    - Determina o que não será aceito
- Modelagem
  - Modelagem de negócios
  - Modelagem de requisitos
  - Modelagem de dados
  - Modelagem de arquitetura
- Implantação e execução
  - Implantação
    - Transformar condições de teste em casos de teste
    - Desenvolver e priorizar casos de teste
    - Criar dados de teste
    - Escrever scripts de teste
    - Configurar o ambiente de teste
  - Execução
    - O qué é execução de teste
    - Registros de evidência (saída de teste)
    - Resultados dos testes
    - Verificar se os defeitos foram corrigidos
- Análise de risco
  - O que é análise de risco
  - O que é gerenciamento de risco
  - O que é mitigação de risco
  - O que é aceitação de risco
  - O que é transferência de risco
  - O que é evasão de risco
  - O que é prevenção de risco
  - O que é exploração de risco
  - O que é compartilhamento de risco
  - O que é redução de risco
  - O que é eliminação de risco
- Ferramentas de gerenciamento de teste

## Ciclo de vida do teste de software

O existem diferentes modelos de ciclo de vida de teste de software, com niveis de complexidade e abordagens diferentes. Nesta etapa, vamos conhecer os modelos mais comuns e suas características.

- o que é Ciclo de vida do teste de software
- Modelos de ciclo de vida de teste
  - Modelo em cascata
  - Modelo em V
  - Modelo em espiral
  - Modelo iterativo
  - Modelo ágil
- Níveis de teste
  - Teste de unidade
  - Teste de integração
  - Teste de sistema
  - Teste de aceitação
- Tipos de testes
  - Teste funcional - Usado para verificar se o software está funcionando conforme o esperado.
  - Teste não funcional - Usado para medir a característica do software.
    - Performance - Usado para verificar se o software está respondendo conforme o esperado.
    - Usabilidade - Usado para verificar se o software está fácil de usar.
    - Segurança - Usado para verificar se o software está seguro.
    - Compatibilidade - Usado para verificar se o software está funcionando em diferentes ambientes.
    - Manutenibilidade - Usado para verificar se o software está fácil de manter.
    - Estresse - Usado para verificar se o software está funcionando em condições extremas.
    - carga - Usado para verificar se o software está funcionando com a carga esperada.
    - Recuperação - Usado para verificar se o software está recuperando de falhas.
    - Instalação - Usado para verificar se o software está instalando corretamente.
    - Documentação - Usado para verificar se o software está documentado corretamente.
    - Portabilidade - Usado para verificar se o software está funcionando em diferentes plataformas.
    - Localização - Usado para verificar se o software está funcionando em diferentes idiomas.    
  - Teste de Mudanças - Usado para verificar se as mudanças feitas no software não afetaram o funcionamento do mesmo.
    - Reteste - Usado para verificar se as mudanças feitas no software não afetaram o funcionamento do mesmo.
    - Teste de regressão - Usado para verificar se as mudanças feitas no software não afetaram o funcionamento do mesmo.
- Teste estrutural Também conhecido como teste de caixa branca, é usado para verificar a estrutura interna do software.
  - Teste de unidade
  - Teste de integração
  - Teste de sistema
  - Teste de aceitação

## METODOLOGIAS ÁGEIS

O que são metodologias ágeis e como elas são usadas em testes de software.

- Introdução às metodologias ágeis
- Diferenças entre Cascade e Agile
- Kanban, Scrum e startup enxuta
- Users stories para testes de software

## TESTES AGILE E TÉCNICAS + O PAPEL DO ANALISTA DE QUALIDADE EM EVENTOS ÁGIL

O que é o teste Agile de software, seus princípios, abordagens e a função do controle de qualidade no ciclo de desenvolvimento de um software Agile. Como usar o Gherkin para cenários de teste e a função de um profissional de Q.A. em diferentes etapas da criação de sistemas, tais como desenvolvimento orientado a testes, desenvolvimento orientado a comportamento e desenvolvimento dirigido a testes de aceitação.

- Gerenciamento do Backlog do produto
- Quadrante de teste Agile
- Pirâmide de Teste
- Shift-Left Testing
- Critérios de aceitação
- Produto mínimo viável (MVP)
- Desenvolvimento orientado por comportamento (BDD) e desenvolvimento orientado a testes (TDD)
- Escrevendo cenários de teste com Gherkin
- Desenvolvimento orientado para testes de aceitação

## TESTE DE INTERFACE DE USUÁRIO (IU) E AUTOMAÇÃO DE TESTE COM CYPRESS

O que é o teste de interface do usuário e como é feito, as principais técnicas de testes, como realizar testes de acessibilidade, como usar as linguagens CSS e XPath em testes de IU, como usar seletores CSS e XPath em documentos HTML, como criar e otimizar fluxos de teste automatizados com Cypress.

- Técnicas de teste e teste de IU
- Teste de acessibilidade
- CSS e XPath
- Prepare um ambiente de teste
- Arquitetura Cypress
- Crie e otimize fluxos de teste automatizados


## API, TESTE DE CONTRATO DE MICROSSERVIÇOS, TESTE AUTOMATIZADO DE API REST

Como testar APIs e o contrato entre microsserviços e aplicativos, e como automatizar os testes de fluxo de dados entre APIs e aplicativos com Cypress.

- Introdução ao teste de API
- Teste de contrato com Swagger e Postman
- Testes funcionais com Postman
- Automatize o teste de métodos Get, Post, Put, Delete
- Automatizar teste de contrato

## TESTE EM APLICATIVOS MÓVEIS, TESTE EM AMBIENTES DEVOPS

Os DevOps mais comuns e as técnicas e ferramentas de testes de aplicativos móveis, como configurar ambientes de testes, realizar e automatizar cenários de testes responsivos com appium e device farms de dispositivos.

- Técnicas de teste móvel
- Configurando um ambiente móvel para testes
- Automatizar testes móveis
- Teste automatizados responsivos e device farms de dispositivos
- Tarefas de controle de qualidade em uma equipe DevOps
- Teste em um ambiente DevOps

## TESTE DE FLUXO DE BANCO DE DADOS, TESTE DE DESEMPENHO DE SERVIÇOS

O que são os diferentes testes de desempenho, como planejá-los, executá-los e otimizá-los com Jmeter, Blazemeter e ferramentas de teste de desempenho em nuvem.

- Processo de teste de desempenho
- Tipos de testes de desempenho
- Planejando e melhorando os testes de desempenho com Jmeter
- Ferramentas de teste de nuvem
- Testando com Blazemeter

## CARREIRA E PLANO DE DESENVOLVIMENTO PROFISSIONAL

Quais funções um profissional da área de Teste de Software pode assumir, próximas etapas, certificações, plano de autodesenvolvimento e dicas de currículo.

- Funções de controle de qualidade e planos de carreira
- Próximas etapas e certificações
- Retomar dicas de construção
- Plano de estudo
- Referências

## PROJETO FINAL: PLANEJAR, CRIAR E EXECUTAR TESTES E RELATAR OS RESULTADOS

Neste encerramento, os alunos irão planejar, criar e executar vários testes em software real com base em user stories e critérios de aceitação desenvolvidos por eles.

- Avaliar user stories e criar pelo menos 1 critério de aceitação para cada um
- Planejar cenários de teste com pelo menos um caminho feliz e um cenário negativo em cada História de Usuário
- Automatizar fluxos com base nos critérios de aceitação da IU
- Automatizar cenários de teste de contrato de API REST
- Planejar e executar testes de desempenho
- Enviar os relatórios e entregáveis através do Github