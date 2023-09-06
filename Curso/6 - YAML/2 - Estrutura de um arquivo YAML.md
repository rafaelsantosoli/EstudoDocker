# Arquivo YAML

## Índice

- [Introdução](#introdução)
- 

## Introdução

- O YAML é uma linguagem de marcação de dados;
- O YAML é uma linguagem de serialização de dados;
- O YAML é uma linguagem de configuração de dados;
- O YAML é uma linguagem de programação de dados;
- O YAML é uma linguagem de programação de configuração de dados;
- O YAML é uma linguagem de programação de serialização de dados;
- O YAML é uma linguagem de programação de marcação de dados;

## Estrutura de um arquivo YAML

- A estrutura de um arquivo YAML é composta por pares de `chave e valor`;
- A `chave` é separada do valor por `dois pontos`;
- Os pares de chave e valor são separados por dois pontos;
- Existe uma hierarquia de pares de chave e valor;
- O `fim de uma linha indica o fim de uma instrução`, não é necessário usar `ponto e vírgula`;
- A indentação deve conter `um ou mais espaços`, e não pode conter `tabulação`;
- O `Espaço é obrigatório` entre a chave e o valor;
- Existem dois tipos de hierarquia: sequência e mapeamento;

## Hierarquia de sequência

- A hierarquia de sequência é usada para definir uma lista de itens;

```yaml

- item1
- item2
- item3

```

## Hierarquia de mapeamento

- A hierarquia de mapeamento é usada para definir um conjunto de pares de chave e valor;

```yaml

chave1: valor1
chave2: valor2
chave3: valor3

```

## Hierarquia de sequência e mapeamento

- A hierarquia de sequência e mapeamento é usada para definir uma lista de itens, onde cada item é um conjunto de pares de chave e valor;

```yaml

- chave1: valor1
  chave2: valor2
  chave3: valor3
- chave1: valor1
    chave2: valor2
    chave3: valor3
- chave1: valor1
    chave2: valor2
    chave3: valor3

```

## Hierarquia de mapeamento e sequência

- A hierarquia de mapeamento e sequência é usada para definir um conjunto de pares de chave e valor, onde cada valor é uma lista de itens;

```yaml

chave1:
- item1
- item2
- item3
chave2:
- item1
- item2
- item3
chave3:
- item1
- item2
- item3

```

## Tipos de dados

- Os tipos de dados são usados para definir valores de dados;
- Os tipos de dados são: strings, números, booleanos, nulos, datas, listas e objetos;

```yaml

chave1: texto # string
chave2: 1 # número
chave3: true # booleano
chave4: null # nulo
chave5: 2020-01-01 # data
chave6: [item1, item2, item3] # lista
chave7: {chave1: valor1, chave2: valor2, chave3: valor3} # objeto

```

## Regras de indentação

- A indentação é usada para definir a hierarquia de pares de chave e valor;
- A indentação é feita com dois espaços ou uma tabulação;

```yaml

chave1:
- item1
- item2
- item3
chave2:
- item1
- item2
- item3
chave3:
- item1
- item2
- item3

```

## Regras de comentários

- Os comentários são usados para explicar o código;
- Os comentários começam com o caractere `#`;
- Os comentários podem ser usados em qualquer lugar, exceto no início de uma linha;

```yaml

# Comentário
chave1: valor1 # Comentário
chave2: valor2 # Comentário
chave3: valor3 # Comentário

```

## Regras de strings

- As strings são usadas para definir valores de texto;
- As strings podem ser definidas com aspas simples ou duplas;
- As strings podem ser definidas sem aspas;
- As strings podem ser definidas em várias linhas;
- As strings podem ser definidas com caracteres de escape;

```yaml

chave1: 'valor1'
chave2: "valor2"
chave3: valor3
chave4: |
  valor4
  valor4
  valor4

```

## Regras de caracteres de escape

- Os caracteres de escape são usados para definir valores de caracteres de escape;

```yaml

chave1: '\b'

```

## Regras de caracteres especiais

- Os caracteres especiais são usados para definir valores de caracteres especiais;
- Os caracteres especiais podem ser definidos com aspas simples ou duplas;
- Os caracteres especiais podem ser definidos sem aspas;

```yaml

chave1: $valor1

```

## Regras de números

- Os números são usados para definir valores numéricos;
- Os números podem ser inteiros ou decimais;
- Os números podem ser positivos ou negativos;
- Os números podem ser definidos em notação científica;

```yaml

chave1: 1
chave2: 1.1
chave3: -1
chave4: -1.1
chave5: 1e1
chave6: 1.1e1
chave7: -1e1
chave8: -1.1e1

```

## Regras de booleanos

- Os booleanos são usados para definir valores lógicos;
- Os booleanos podem ser verdadeiro ou falso;
- Podemos usar `true` ou `on` para verdadeiro;
- Podemos usar `false` ou `off` para falso;

```yaml

chave1: true
chave2: false

```

## Regras de nulos

- Os nulos são usados para definir valores nulos;
- Os nulos podem ser definidos com `~` ou `null`;

```yaml

chave1: null

```

## Regras de datas

- As datas são usadas para definir valores de data;
- As datas podem ser definidas no formato ISO 8601;

```yaml

chave1: 2020-01-01

```

Formato ISO 8601:

- `YYYY-MM-DD`;
- `YYYY-MM-DDThh:mm:ss`;
- `YYYY-MM-DDThh:mm:ssZ`;
- `YYYY-MM-DDThh:mm:ss.sss`;
- `YYYY-MM-DDThh:mm:ss.sssZ`;
- `YYYY-MM-DDThh:mm:ss.sss+hh:mm`;
- `YYYY-MM-DDThh:mm:ss.sss-hh:mm`;
- `YYYY-MM-DDThh:mm:ss.sss+hhmm`;
- `YYYY-MM-DDThh:mm:ss.sss-hhmm`;
- `YYYY-MM-DDThh:mm:ss.sss+hh`;
- `YYYY-MM-DDThh:mm:ss.sss-hh`;
- `YYYY-MM-DDThh:mm:ss.sss+hhmmss`;
- `YYYY-MM-DDThh:mm:ss.sss-hhmmss`;

Referência: 
[Wikipedia](https://pt.wikipedia.org/wiki/ISO_8601)
[ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html)

Onde:

- `YYYY`: ano com quatro dígitos;
- `MM`: mês com dois dígitos;
- `DD`: dia com dois dígitos;
- `hh`: hora com dois dígitos;
- `mm`: minuto com dois dígitos;
- `ss`: segundo com dois dígitos;
- `sss`: milissegundo com três dígitos;
- `Z`: fuso horário UTC;
- `+hh:mm`: fuso horário com sinal de mais;
- `-hh:mm`: fuso horário com sinal de menos;
- `+hhmm`: fuso horário com sinal de mais;
- `-hhmm`: fuso horário com sinal de menos;
- `+hh`: fuso horário com sinal de mais;
- `-hh`: fuso horário com sinal de menos;
- `+hhmmss`: fuso horário com sinal de mais;
- `-hhmmss`: fuso horário com sinal de menos;
- `T`: separador de data e hora;
- `:`: separador de hora, minuto e segundo;
- `.`: separador de segundo e milissegundo;
- `+`: separador de fuso horário com sinal de mais;
- `-`: separador de fuso horário com sinal de menos;
- `:`: separador de fuso horário com sinal de mais ou menos;


## Regras de listas

- As listas são usadas para definir valores de lista;
- As listas podem ser definidas com colchetes;
- As listas podem ser definidas com chaves;
- As listas podem ser definidas com chaves e colchetes;

```yaml

chave1: [item1, item2, item3]
chave2: {item1, item2, item3}
chave3: {item1, item2, item3}
chave4: [item1, item2, item3]

```

ou

```yaml

chave1: 
- item1
- item2
- item3

```

## Regra de dicionário

- Os dicionários são usados para definir valores de dicionário;
- Os dicionários podem ser definidos com chaves;
- Os dicionários podem ser definidos com colchetes;
- Os dicionários podem ser definidos com chaves e colchetes;

```yaml

chave1: {chave1: valor1, chave2: valor2, chave3: valor3}

chave2:
  chave1: valor1
  chave2: valor2
  chave3: valor3

```

## Regras de objetos

- Os objetos são usados para definir valores de objeto;
- Os objetos podem ser definidos com chaves;
- Os objetos podem ser definidos com colchetes;
- Os objetos podem ser definidos com chaves e colchetes;

```yaml

chave1: {chave1: valor1, chave2: valor2, chave3: valor3}

chave2:
- chave1: valor1
- chave2: valor2
- chave3: valor3

```


```

## Regras de chaves

- As chaves são usadas para definir valores de chave;
- As chaves podem ser definidas com aspas simples ou duplas;
- As chaves podem ser definidas sem aspas;

```yaml

'chave1': valor1
"chave2": valor2
chave3: valor3

```

## Regras de valores

- Os valores são usados para definir valores de valor;
- Os valores podem ser definidos com aspas simples ou duplas;
- Os valores podem ser definidos sem aspas;

```yaml

chave1: 'valor1'
chave2: "valor2"
chave3: valor3

```

## Regras de expressões

- As expressões são usadas para definir valores de expressão;
- As expressões podem ser definidas com aspas simples ou duplas;
- As expressões podem ser definidas sem aspas;

```yaml

chave1: 'valor1'
chave2: "valor2"
chave3: valor3

```

