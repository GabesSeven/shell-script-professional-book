#!/bin/bash

while true
do
	clear
	horario=`date | cut -d\   -f4`
	echo -e "$horario"
	sleep 1 # dormir por 1 segundo
done
