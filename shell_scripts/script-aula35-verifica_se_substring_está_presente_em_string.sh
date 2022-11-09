#!/bin/bash

# verificamos se uma substring está presente em uma string

echo $2 | grep $1 > /dev/null

if [ $? -eq "0" ]
then 
	echo "$1 está contida em $2"
else
	echo "$1 NÃO está contida em $2"
fi
