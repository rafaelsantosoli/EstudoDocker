# Inspecionar redes

- Para inspecionar uma rede, basta usar o comando `docker network inspect <nome-da-rede>`, onde `<nome-da-rede>` é o nome da rede.

```bash

docker network inspect minha-rede

```

- Também é possível utilizar a ID da rede.

```bash

docker network inspect 1a2b3c4d5e6f

```

- O comando `docker network inspect` retorna um JSON com as informações da rede.

```json

[
    {
        "Name": "minha-rede",
        "Id": "1a2b3c4d5e6f",
        "Created": "2021-01-01T00:00:00.000000000Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "

", "Gateway": "

" } ] }, "Internal": false, "Attachable": false, "Ingress": false, "ConfigFrom": { "Network": "" }, "ConfigOnly": false, "Containers": {}, "Options": {}, "Labels": {} } ]

```

- Para filtrar as informações, basta usar o comando `docker network inspect --format '{{ .ConfigOnly }}' <nome-da-rede>`, onde `<nome-da-rede>` é o nome da rede.

```bash

docker network inspect --format '{{ .ConfigOnly }}' minha-rede

```

- Também é possível utilizar a ID da rede.

```bash

docker network inspect --format '{{ .ConfigOnly }}' 1a2b3c4d5e6f

```

