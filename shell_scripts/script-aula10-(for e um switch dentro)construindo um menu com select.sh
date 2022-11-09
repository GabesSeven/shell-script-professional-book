#!/bin/bash
#
#Utilizando o comando select para construir menu

opcoes=("python" "shell" "haskell" "sair") #não pode deixar espaço entre =()
select nome in "${opcoes[@]}" #@ significa expandir as opções
do
	#echo "$nome"
	case $nome in 
		"python")
			echo "Você escolheu a linguagem python"
			;;	
		"shell")
			echo "Você escolheu a linguagem shell"
			;;
		"haskell")
			echo "Você escolheu a linguagem haskell"
			;;
		"sair") 
			break
			;;
		*) echo "opcao inválida";;
    	esac # finaliza o case
done  
