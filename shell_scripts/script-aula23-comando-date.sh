#!/bin/bash

# usando o comando date
# cut -d delimitador, -f define a coluna

horas= date | cut -d" " -f4 | cut -d: -f1
#minutos= date | cut -d" " -f4 | cut -d: -f2
#segundos= date | cut -d" " -f4 | cut -d: -f3

if (("$horas" >= "06")) && (("$horas" <= "12"))
then
	echo "Bom dia!"
elif (("$horas" > "12")) && (("$horas" < "18"))
then
	echo "Boa tarde!"
else 
	echo "Boa noite!"
fi
