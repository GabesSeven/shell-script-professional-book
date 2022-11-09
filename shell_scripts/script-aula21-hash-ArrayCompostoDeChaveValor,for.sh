#!/bin/bash

# arrays associativos
# par chave e valor, semelhante ao dicionario no python

# declaração do array associativo
declare -A pessoas

# preenchendo o array
pessoas=(
		["joao"]=20
		["maria"]=30
		["marcos"]=28
	)

# percorrendo o array
for pessoa in "${!pessoas[@]}" # expandimos as chaves (!)
do
	echo "$pessoa tem ${pessoas[$pessoa]} anos"
done
