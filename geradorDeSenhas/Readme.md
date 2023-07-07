# Gerador de Senhas Aleatórias

Um gerador de senhas aleatórias em Shell Script que permite ao usuário especificar o comprimento e a complexidade desejada para a senha. É útil para criar senhas seguras de forma rápida e fácil.

## Como usar

1. Certifique-se de ter o interpretador do Shell Script instalado no seu sistema.
2. Baixe o arquivo `gerador_senhas.sh` para o seu computador.
3. Abra o terminal e navegue até o diretório onde o arquivo `gerador_senhas.sh` está localizado.
4. Execute o comando `chmod +x gerador_senhas.sh` para tornar o arquivo executável.
5. Execute o comando `./gerador_senhas.sh` para iniciar o programa.
6. Digite o comprimento desejado para a senha quando solicitado.
7. Selecione a complexidade desejada para a senha digitando o número correspondente.
8. A senha gerada será exibida no terminal.

## Complexidade da senha

O programa oferece quatro níveis de complexidade para a senha, com base nos caracteres incluídos:

1. Baixa: Apenas letras minúsculas.
2. Média: Letras minúsculas e números.
3. Alta: Letras minúsculas, letras maiúsculas e números.
4. Muito Alta: Letras minúsculas, letras maiúsculas, números e símbolos.

Você pode escolher o nível de complexidade conforme sua preferência e necessidade de segurança.

## Requisitos

- Interpretador do Shell Script (como o Bash)

## Exemplo

    ```bash
    Digite o comprimento desejado para a senha: 12
    Selecione a complexidade desejada para a senha:

    1. Baixa
    2. Média
    3. Alta
    4. Muito Alta
    Digite o número correspondente à complexidade desejada: 3
    Senha gerada: Abc123xyz789
    ```


## Contribuição

Contribuições são bem-vindas! Se você encontrar algum problema, tiver alguma sugestão ou quiser melhorar o código, sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*.

## Licença

Este projeto está licenciado sob a Apache 2.0.
