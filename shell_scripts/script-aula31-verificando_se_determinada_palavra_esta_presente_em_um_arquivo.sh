#!/bin/bash

echo "Digite o nome do arquivo e a palavra"
read arquivo palavra

# /dev/null redireciona a saída do grep
if grep $palavra $arquivo > /dev/null
then 
	echo "A palavra $palavra existe no arquivo $arquivo."
fi
