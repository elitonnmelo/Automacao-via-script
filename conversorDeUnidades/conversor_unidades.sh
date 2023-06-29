#!/bin/bash

# Conversor de Unidades

# Menu de opções
echo "Conversor de Unidades"
echo "---------------------"
echo
echo "Escolha uma opção:"
echo "1. Quilômetros para Milhas"
echo "2. Milhas para Quilômetros"
echo "3. Graus Celsius para Fahrenheit"
echo "4. Fahrenheit para Graus Celsius"
echo
echo -n "Opção: "
read opcao

# Realiza a conversão com base na opção selecionada
case $opcao in
  1)
    echo
    echo -n "Digite o valor em quilômetros: "
    read km
    milhas=$(echo "scale=2; $km / 1.60934" | bc)
    echo "$km quilômetros é igual a $milhas milhas."
    ;;
  2)
    echo
    echo -n "Digite o valor em milhas: "
    read milhas
    km=$(echo "scale=2; $milhas * 1.60934" | bc)
    echo "$milhas milhas é igual a $km quilômetros."
    ;;
  3)
    echo
    echo -n "Digite a temperatura em graus Celsius: "
    read celsius
    fahrenheit=$(echo "scale=2; ($celsius * 9/5) + 32" | bc)
    echo "$celsius graus Celsius é igual a $fahrenheit graus Fahrenheit."
    ;;
  4)
    echo
    echo -n "Digite a temperatura em graus Fahrenheit: "
    read fahrenheit
    celsius=$(echo "scale=2; ($fahrenheit - 32) * 5/9" | bc)
    echo "$fahrenheit graus Fahrenheit é igual a $celsius graus Celsius."
    ;;
  *)
    echo "Opção inválida."
    ;;
esac
