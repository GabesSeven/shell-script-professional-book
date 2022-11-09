#!/bin/bash

# as variaveis são dinâmicas, não é preciso declará-las, os vetores também


linguagens[0]='shell script'
linguagens[1]='python'
linguagens[2]='C'
linguagens[3]='haskell'

# obtendo o tamanho do vetor
tam_vet=${#linguagens[@]} # (#) antes da variável, encontrará o tamanho do vetor (@) expande para todos os membros
echo "O vetor possui $tam_vet elementos."

linguagens[3]='php'

# mostrando todos os elementos do vetor
for((i=0; i<${tam_vet}; i++))
do
	echo "linguagens[$i]: ${linguagens[$i]}"
done
