# Camadas das Imagens

- As imagens do Docker são divididas em camadas (layers).
- Cada instrução do Dockerfile cria uma camada.
- Quando alto é atualizado, apenas as camadas depois da linha alterada são refeitas.
- Isso permite que o Docker reutilize as camadas já existentes, acelerando o processo de build.
- As camadas são armazenadas em cache no Docker Host.

