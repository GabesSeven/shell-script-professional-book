#!/bin/bash

# opcoes de linhas de comando, saber o que o usuario deseja fazer sem precisar alterar o codigo
# exemplo --help

MENSAGEM_AJUDA="Uso: meu_script [OPÇÃO]... [ARQUIVO]..."
VERSAO="1.0"
if test "$1" = "-h"
then 
	echo "$MENSAGEM_AJUDA"
	exit 0
elif test "$1" = "-V"
then 
	echo "$VERSAO"
fi
