#!/bin/bash

# Função para calcular equação de primeiro grau
calcular_equacao_primeiro_grau() {
    echo "Digite o valor de a:"
    read a

    echo "Digite o valor de b:"
    read b

    if [ "$a" -eq 0 ]; then
        echo "O valor de 'a' não pode ser zero."
        return
    fi

    x=$(echo "scale=2; -($b) / $a" | bc)
    echo "A solução da equação é: x = $x"
}

# Função para calcular equação de segundo grau
calcular_equacao_segundo_grau() {
    echo "Digite o valor de a:"
    read a

    echo "Digite o valor de b:"
    read b

    echo "Digite o valor de c:"
    read c

    if [ "$a" -eq 0 ]; then
        echo "O valor de 'a' não pode ser zero."
        return
    fi

    delta=$(echo "$b^2 - 4 * $a * $c" | bc)
    raiz_delta=$(echo "scale=2; sqrt($delta)" | bc)

    if [ "$delta" -lt 0 ]; then
        echo "A equação não possui soluções reais."
    elif [ "$delta" -eq 0 ]; then
        x=$(echo "scale=2; -($b) / (2 * $a)" | bc)
        echo "A equação possui uma solução real: x = $x"
    else
        x1=$(echo "scale=2; (-($b) + $raiz_delta) / (2 * $a)" | bc)
        x2=$(echo "scale=2; (-($b) - $raiz_delta) / (2 * $a)" | bc)
        echo "A equação possui duas soluções reais: x1 = $x1 e x2 = $x2"
    fi
}

# Menu principal
while true; do
    echo "====================="
    echo " Calculadora Polinômios"
    echo "====================="
    echo "Selecione o tipo de equação:"
    echo "1. Equação de Primeiro Grau"
    echo "2. Equação de Segundo Grau"
    echo "0. Sair"

    read opcao

    case $opcao in
        1) calcular_equacao_primeiro_grau ;;
        2) calcular_equacao_segundo_grau ;;
        0) break ;;
        *) echo "Opção inválida. Por favor, selecione novamente." ;;
    esac

    echo
done
