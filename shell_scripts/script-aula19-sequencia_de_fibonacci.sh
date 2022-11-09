#!/bin/bash

# Implementação da Sequência de Fibonacci
# A sequência de Fibonacci: 1, 1, 2, 3, 5, 8, 13...
# ou seja, os dois primeiros termos são iguais a 1 e 
# cada termo seguinte é a soma dos dois termos imediatamente anteriores
# 
# Autor: Gabriel
# Data: 04/02/2020
#
# testa se passou argumento

if [ "$1" == "" ]
then
	echo "Argumentos insuficientes!"
	echo "Exemplo: fib.sh 4"
	exit 1
fi

if test $1 = 1 || test $1 = 2
then 
	if test $1 = 1
	then 
		echo -e "1" # -e nao pula linha
	fi

	if test $1 = 2
	then
		echo -e "1 1"
	fi
	exit 0
fi

# os dois primeiros termos da sequencia são iguais a 1
n1=1
n2=1

echo -n "1 1"


# loop começando de 2 e indo até $1 (max)
for i in `seq 3 $1`
do
	prox=$(($n1 + $n2))
	echo -n " $prox" # -n nao pula linha, mostra tudo na mesma linha
	aux=$n2
	n2=$prox
	n1=$aux
done

echo -e "\n"
