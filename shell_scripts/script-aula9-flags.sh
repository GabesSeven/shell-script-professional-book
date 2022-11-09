#!/bin/bash
#Flags - pode possuir dois valores, 0 (desligada) e 1 (ligada)
# as flags também podem ser yes/no

flag_funcao=1

funcao1(){
	echo "funcao1"
}

funcao2(){
	echo "funcao2"
}


if [[ $flag_funcao -eq 0 ]] #equal significa igual
then 
	funcao1
else 
	funcao2
fi # finalisa o comando condicional
