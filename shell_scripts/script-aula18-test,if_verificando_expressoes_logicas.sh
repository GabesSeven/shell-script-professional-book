#!/bin/bash

# usaremos o comando teste para verificar o resultado de expressoes logicas

chave=1

# primeira forma
if test "$chave" = 0
then
	echo 'chave ligada'
else 
	echo 'chave desligada'
fi

# segunda forma 
if test "$chave" -eq 1
then 
	echo "chave ligada"
else
	echo "chave desligada"
fi

# outra forma de fazer um if sem o comando test
if [ "$chave" = "1" ]
then
	echo 'chave ligada'
else 
	echo 'chave desligada'
fi
