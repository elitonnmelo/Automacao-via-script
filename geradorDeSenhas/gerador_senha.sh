#!/bin/bash

# Função para gerar uma senha aleatória
generate_password() {
    local length=$1
    local complexity=$2
    local password=""

    # Definir os caracteres disponíveis para cada nível de complexidade
    local lowercase="abcdefghijklmnopqrstuvwxyz"
    local uppercase="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local numbers="0123456789"
    local symbols="!@#$%^&*()_-+=<>?"

    # Verificar a complexidade desejada e adicionar os caracteres correspondentes
    case $complexity in
        1)
            # Complexidade Baixa: Apenas letras minúsculas
            password=$(tr -dc '[:lower:]' < /dev/urandom | fold -w "$length" | head -n 1)
            ;;
        2)
            # Complexidade Média: Letras minúsculas e números
            password=$(tr -dc '[:lower:][:digit:]' < /dev/urandom | fold -w "$length" | head -n 1)
            ;;
        3)
            # Complexidade Alta: Letras minúsculas, letras maiúsculas e números
            password=$(tr -dc '[:lower:][:upper:][:digit:]' < /dev/urandom | fold -w "$length" | head -n 1)
            ;;
        4)
            # Complexidade Muito Alta: Letras minúsculas, letras maiúsculas, números e símbolos
            password=$(tr -dc '[:lower:][:upper:][:digit:][:punct:]' < /dev/urandom | fold -w "$length" | head -n 1)
            ;;
    esac

    echo "Senha gerada: $password"
}

# Solicitar o comprimento desejado para a senha
echo -n "Digite o comprimento desejado para a senha: "
read length

# Solicitar a complexidade desejada para a senha
echo "Selecione a complexidade desejada para a senha:"
echo "1. Baixa"
echo "2. Média"
echo "3. Alta"
echo "4. Muito Alta"
echo -n "Digite o número correspondente à complexidade desejada: "
read complexity

# Chamar a função para gerar a senha
generate_password "$length" "$complexity"
