#!/bin/bash

# verifica se o primeiro argumento da função é vazio 
function eh_vazio(){
	# True of the length if "STRING" is zero	
	if [ -z "$1"]; then # $1 significa primeiro argumento		
		# retorna 0 se o primeiro argumento é vazio
		return 0
	fi
	# retorna 1 se o primeiro argumento NÃO é vazio
	return 1
}

# testa se o retorno é 0
if eh_vazio; then
	echo "não passou argumentos"
else 
	echo "passou argumentos"
fi

#função para somar dois números

function soma {
	s=$(($1 + $2)) # realiza a soma
	echo "$1 + $2 = $s" # exibe a soma
}

soma 10 20 # chama a funçao soma
