#!/bin/bash

# diff compara linha por linha
# diff retorna informações sobre as linhas que forma alterdas (inseridas e removidas)

# um scrip recebe dois arquivos e ve as diferenças entre eles

# testar a passagem de argumentos 
if [ "$1" == "" ]
then 
	echo -e "\nArgumentos insuficientes"
	echo -e "Exemplo de chamada: ./script.sh original.txt alterado.txt\n"
	exit 
fi

if [ "$2" == "" ]
then 
	echo -e "\nArgumentos insuficientes"
	echo -e "Exemplo de chamada: ./script.sh original.txt alterado.txt\n"
	exit 
fi

# redireciona a saída do comando diff para o arquivo diff.txt
diff $1 $2 > diff.txt

# obtem todas as linhas que foram alteradas 
# -v: seleciona somente linhas não coincidentes
# -c: 


alteradas=`cat diff.txt | grep -v ">" | grep -v "<" | grep "c"`

# verifico se o arquivo resultado.txt existe
if [ -f "$file" ]
then
	# se existe, então deleta
	rm $file
else 
	# se não existe, então cria
	touch resultado.txt
fi 


# obtém todas as linhas que foram alteradas
echo -n "As linhas " >> resultado.txt
for linha in $alteradas
do
	var=`echo -n $linha | cut -d"c" -f2`
	echo -n "$var, " >> resultado.txt
done
echo -n "foram alteradas em relação ao arquivo original" >> resultado.txt

echo -e "" >> resultado.txt

# obtém todas as linhas que foram inseridas
inseridas=`cat diff.txt | grep -v ">" | grep -v "<" | grep "a"`

echo -n "As linhas " >> resultado.txt
for linha in $inseridas
do
	var=`echo -n $linha | cut -d"a" -f2`
	echo -n "$var, " >> resultado.txt
done
echo -n "foram inseridas em relação ao arquivo original" >> resultado.txt

echo -e "" >> resultado.txt


# obtém todas as linhas que foram removidas

removidas=`cat diff.txt | grep -v ">" | grep -v "<" | grep "d"`

echo -n "As linhas " >> resultado.txt
for linha in $removidas
do
	var=`echo -n $linha | cut -d"d" -f2`
	echo -n "$var, " >> resultado.txt
done
echo -n "foram inseridas em relação ao arquivo original" >> resultado.txt

echo -e "" >> resultado.txt

count_alteradas=`cat diff.txt | grep -v ">" | grep -v "<" | grep "c" | wc -l` #wc -l conta a quantidade de linhas 
count_inseridas=`cat diff.txt | grep -v ">" | grep -v "<" | grep "a" | wc -l`
count_removidas=`cat diff.txt | grep -v ">" | grep -v "<" | grep "d" | wc -l`

echo -e "\nO arquivo resultado.txt foi gerado com o seguinte conteudo:\n"
resultado=`cat resultado.txt`
echo -e "$resultado\n"

