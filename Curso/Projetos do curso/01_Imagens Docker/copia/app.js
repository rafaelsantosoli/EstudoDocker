const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Olá minha imagem docker!');
});

app.listen(port, () => {
    console.log(`Servidor rodando na porta: ${port}`);
});

//Explique o que faz cada linha do código acima.

//A linha 1 importa o express para o arquivo app.js
//A linha 2 cria uma constante chamada app que recebe o express
//A linha 3 cria uma constante chamada port que recebe o valor 3000
//A linha 5 cria uma rota para o endereço raiz do servidor
//A linha 6 envia uma resposta para o cliente com o texto "Olá minha imagem docker"
//A linha 9 inicia o servidor na porta 3000
//A linha 10 envia uma mensagem para o console informando que o servidor está rodando na porta 3000

