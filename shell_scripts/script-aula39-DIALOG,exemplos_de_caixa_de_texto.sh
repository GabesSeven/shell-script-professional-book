#!/bin/bash

dialog --msgbox 'Curso completo de Shell Script' 5 40
dialog \
	--title 'Shell Script' \
	--sleep 3 \	
	--infobox 'Aguarde 3 Segundos' \
	5 40

dialog \
	--title 'Entrada de Texto' \
	--inputbox 'Digite sua linguagem preferida: ' \
	0 0

dialog \
	--title 'Seleção' \
	--checklist 'O que você gosta de fazer?' \
	0 0 0 \
	bola 'Jogar bola' on \
	bicicleta 'Jogar tenis' off \
	tenis 'Jogar tenis' off \
	vole 'Jogar volei' on \
	
dialog \
	--title 'Password' \
	--passwordbox 'Digite sua senha: ' \
	0 0

dialog \
	--title 'Pergunta' \
	--radiolist 'Qual seu nível de Shell Script?' \
	0 0 0 \
	Iniciante 'até 2 anos' on \
	Intermediario 'até 4 anos' off \
	Avancado 'até 8 anos' off \
	ChuckNorris 'mais de 8 anos' off \

dialog \
	--title 'Curso de Shel Script' \
	--textbox /etc/passwd \
	0 0

dialog \
	--title 'Curso de Shell Script' \
	--yesno 'Voce gostou do Curso?' \
	0 0 
