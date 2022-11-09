#! /bin/bash 

# Lista os arquivos e diretórios 
#
# Autor: Gabriel Vieira <gabrielvieira@live.com>
#
# todas as variáveis do bash são locais (há não ser que você coloque LOCAL antes da variável)e não são tipadas

num = 10
num = '10' #aspas impedem a espação do código

# quando for usar função recursiva sempre utilize variáveis locais para proteger-las

funcao(){
	echo 'ola mundo'
}
	
funcao

#versionamento - forma de identificar a versões
#historico de mudanças:
#	change log - registra mudanças dos aquivos de forma técnica e detalhada (p/ programadores). Exemplo:
# 2016-02-26 (Gabriel) - adicionado opção help
# 	news - bons para usuários que desejam saber as novidades do seu programa de forma menos técnica (p/ usuários). Por exemplo:
# Novidades da versão 1.5:
#    Novas opções foram adicionadas bla bla bla... Bugs corrigidos e bla bla bla...
#Nunca esquecer de colocar agradecimentos, pois é uma forma de retribuir ajudas de terceiros



