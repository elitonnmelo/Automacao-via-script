#!/bin/bash
#______________________________________________________________
#Calculadora em Script
#Nome: Eliton Pereira Melo
#Disciplina: Automação Via Script
#Professor:Gabriel Tavares
#______________________________________________________________
lmc() {
echo " que operação deseja fazer agora?"
echo
echo "1. Soma [+]"
echo "2. Subtração [-]"
echo "3. Multiplicação [×]"
echo "4. Divisão [÷]"
echo "5. Raiz quadrada []"
echo "6. Sair"
echo
echo -n "_>" 
read opcao 
case $opcao in 
  1) soma ;;
  2) subt ;;
  3) multi ;;
  4) divi ;;
  5) raiz ;;
  6) sair ;;
esac 

}

#soma
soma() {
echo
  echo -n "Digite um numero:" 
  read n1
  echo -n "Digite outro numero:" 
  read n2
  resultado=$((n1+n2)) 
  echo "$n1 + $n2 = $resultado"
}

#subtracao
subt() {
echo
  echo -n "Digite o primeiro numero:"
  read n1
  echo -n "Digite segundo numero:"
  read n2
  resultado=$((n1-n2))
  echo "$n1 - $n2 = $resultado"
}


# multiplicacao

multi() {
echo
  echo -n "Digite um numero:"
  read n1
  echo -n "Digite outro numero:"
  read n2
  resultado=$((n1*n2))
  echo "$n1 × $n2 = $resultado"
}


# divisao

divi() {
echo
  echo -n "Digite um numero:"
  read n1
  echo -n "Digite outro numero:"
  read n2
  ressultado=$((n1/n2))
  echo "$n1 ÷ $n2 = $resultado"
}

# raiz quadrada
raiz() {
echo
  echo -n "Digite um numero:" 
  read n1
  resultado=$(bc<<<"scale=0;sqrt($n1)")
  echo "A raiz quadrada de $n1 = $resultado" 

}
# funcao de saida

sair() {
 clear
 exit
}

lmc
#fimm
#________________________________________________________________________________________