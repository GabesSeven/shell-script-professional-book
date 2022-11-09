#!/bin/bash

# função recursiva que calcula a potência de um número

# exemplo de chamada: script.sh 2 10
# onde 2 é a base e 10 o expoente 

function pot(){
	if [ "$2" -eq "0" ]; then
		return 1
	fi
	pot $1 $(( $2 - 1 ))
	return $(( $1 * $? )) #($?) resultado da última chamada 
}


# testa se passou dois parâmetros, -z verifica se os valores são válidos
if [ -z "$1" ] || [ -z "$2" ]
then
	echo "Parametros insuficientes!"
	echo "Execute: script.sh <base> <expoente>"
	echo "script.sh 2 10"
# verifica se as variáveis são inteiras 
elif (expr $1 + 1 > /dev/null 2> /dev/null) && (expr $2 + 1 > /dev/null 2> /dev/null)
then
	pot $1 $2
	acho "$?"
else
	echo "Parametros somente números inteiros!"
	echo "Execute: script.sh <base> <expoente>"
	echo "script.sh 2 10"
fi


pot $1 $2
echo "$?"


