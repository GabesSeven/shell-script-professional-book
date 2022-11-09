#! /bin/bash 
#
# meu_script.sh - Meu primeiro script 
# Autor: Gabriel Vieira <gabrielvieira@live.com>
# ---------------------------------
# Esse programa recebe como parâmetro, o nome de usuário e 
# retorna o nome completo do usuário na saída padrão
# 
# Exemplo:
#	$ ./meu_script.sh  gabrielvieira    
#	Gabriel Vieira
# Histórico:
# 	v1.0 2020-01-14, Gabriel Vieira
# 		- Versão melhorada no quseito X
# Licença: GPL

# Regras para um código limpo
#
#1) Colocar apenas um comando por linha
#2) Alinhar verticalmente comandos de um mesmo  bloco 
#3) Deslocar o linhamento a direita a cada bloco novo
#4) Usar linhas em branco para separar trechos 
#5) Não ultrapassar  o limite de 80 colunas por linha 

#comando extenso numa só linha 

#gdialog permite que scripts contenham design gráficos
#gdialog --title "Curso Completo de Shell Script" --msgbox "Bem vindo(a)!! 0 0" 

#facilitanod a leitura
gdialog \
	--title "Curso Completo de Shell Script" \
	--yesno "Bem vindo(a)!!" \ #um tipo de janela 	
	#--msgbox "Bem vindo(a)!!" \ #outro tipo de janela 
	0 0  #altura, largura

echo "Shell script eh legal" #isso é um comentário
