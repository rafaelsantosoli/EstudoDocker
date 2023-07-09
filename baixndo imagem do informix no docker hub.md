# instalando imagem do informix no docker hub


# 1. baixar imagem do informix no docker hub

docker pull ibmcom/informix-developer-database:latest

# 2. criar container com a imagem do informix

comandos para criar container com a imagem do informix

```
docker run -it --name informix -e LICENSE=accept -e INFORMIX_PASSWORD=informix -p 9088:9088 -p 9089:9089 -p 27017:27017 -p 27018:27018 -p 27883:27883 -p 27884:27884 -v /home/rafael/Documentos/Informix:/opt/ibm/data ibmcom/informix-developer-database:latest
```

Exeplicação dos parâmetros:

- -it: modo interativo
- --name informix: nome do container
- -e LICENSE=accept: aceita a licença
- -e INFORMIX_PASSWORD=informix: senha do usuário informix
- -p 9088:9088: porta do informix
- -p 9089:9089: porta do informix
- -p 27017:27017: porta do informix
- -p 27018:27018: porta do informix
- -p 27883:27883: porta do informix
- -p 27884:27884: porta do informix
- -v /home/rafael/Documentos/Informix:/opt/ibm/data: volume para armazenar os dados do informix
- ibmcom/informix-developer-database:latest: nome da imagem
- 



 


# 3. criar banco de dados

comandos para criar banco de dados

# 4. criar tabelas

comandos para criar tabelas

# 5. inserir dados nas tabelas

