#!/bin/bash

# Script de Administração
#
# Autor: Gabriel <email@.unesp.com>
# Data: 01/01/2001	
#

while true 
do
	
	clear
	menu="\n\\t1) Ver processos ativos\n
\\t2) Mostra os files systems da máquina\n
\\t3) Mostra a quanto tempo a máquina está no ar\n
\\t4) Usuário ativos na máquina\n
\\t5) versão do kernel\n
\\t6) Lista de usuários da máquina\n
\\t7) Sair do sistema\n"

	echo -e "$menu"

	echo "Escolha uma opção: "
	read op 

	case $op in
		1) ps aux ;;
		2) df ;;
		3) tempo=`uptime | cut -d\  -f4,5`
			echo "A máquina está no ar a $tempo" ;;
		4) users | tr \  \\n ;;
		5) cat /proc/version | cut -d\  -f3 ;;
		6) /etc/passwd | cut -d: -f1 ;;
		7) exit ;;
		*) echo -e "Opção inválida!\n" ;;
	esac	
	
	echo -e "Pressione Enter para voltar ao menu..."
	read tecla
done
