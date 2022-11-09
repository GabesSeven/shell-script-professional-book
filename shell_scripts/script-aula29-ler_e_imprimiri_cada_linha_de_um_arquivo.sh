#!/bin/bash


# ler e xibi cada linha de um arquivo
while read linha
do
	echo "$linha"
done < arquivo_teste_aula25.txt
