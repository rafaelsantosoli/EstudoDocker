# Criando arquivo YAML

Vamos criar projeto em python para ler e imprimir um arquivo YAML.

## Criando projeto

```bash

$ mkdir 01_YAML

$ cd 01_YAML

$ touch app.py

$ touch test.yml

```

## Instalando dependências

Instalando dependências

```bash

pip install pyyaml

```

## Escrevendo código

```python

# app.py

import yaml

if __name__ == '__main__':
    
    stream = open('test.yaml', 'r')
    dictionary = yaml.safe_load(stream)

    for key, value in dictionary.items():
        print(key + " : ", str(value))


```
