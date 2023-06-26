#!/bin/bash

# Contador de Palavras em um Arquivo

# Solicita ao usuário o nome do arquivo
echo "Digite o nome do arquivo:"
read arquivo

# Verifica se o arquivo existe
if [ ! -f "$arquivo" ]; then
  echo "Arquivo não encontrado."
  exit 1
fi

# Realiza a contagem de palavras
numero_palavras=$(wc -w < "$arquivo")

# Exibe o resultado na saída padrão
echo "Número de palavras no arquivo $arquivo: $numero_palavras"

# Calcula e exibe estatísticas adicionais
numero_linhas=$(wc -l < "$arquivo")
numero_caracteres=$(wc -m < "$arquivo")

echo "Número de linhas no arquivo: $numero_linhas"
echo "Número de caracteres no arquivo: $numero_caracteres"
