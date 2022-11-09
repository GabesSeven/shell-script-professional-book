#!/bin/bash

# o usuário root tem sempre o ID 0

usuario=`id -u`
if [ "$usuario" == "0" ]
then 
	echo "Usuário é root"
else
	echo "Usuário não e root."
fi
