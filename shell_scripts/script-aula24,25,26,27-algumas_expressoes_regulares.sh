#!/bin/bash

# vantagens de expressão regulares é reduzir o tamanho do código e mais eficiente 

# expressoes regulares possui METACARACTERES: caracteres com funções específica

# Metacaracteres
# ^ (circuflexo): representa começo da linha
# $ (cifrão): representa o fim da linha
# . (ponto): casa um caractere qualquer
# .* (curinga): casa qualquer coisa, tudo ou nada
# a+ (a mais): casa a letra "a" uma ou mais vezes
# a* (a asterisco): casa a letra "a" zero ou mais vezes
# a? (opcional): casa a letra "a" zero ou mais vezes
# a{2} (chaves): casa a letra "a" duas vezes
# a{2,} (chaves): casa a letra "a" no mínimo duas vezes
# [abc] (lista): casa as letras "a" ou "b" ou "c"
# [a-d] (lista): casa as letras "a" ou "b" ou "c" ou "d"
# [^abc] (lista): casa qualquer caractere, exceto "a", "b" e "c"
# (isso|aquilo) (Ou): casa as strings "isso" ou "aquilo"

# obtem todas as linhas que começam com "python"
echo -e "Mostrando todas as linhas que começam com python..."
linhas_python=`grep ^python $1`
echo -e "$linhas_python\n"

# obtem todas as linhas que terminam com "Ritchie"
echo "Mostrando todas as linhas que terminam com Ritchie..."
linhas_ritchie=`grep Ritchie$ $1 `
echo -e "$linhas_ritchie\n"

# obtém todas as linhas que começam com python oy Python
echo -e "Mostrando todas as linhas que começam com python ou Python..."
linhas_python_ou_Python=`grep [Pp]ython $1` #esse cochete sempre represent um único caractere
echo -e "$linhas_python_ou_Python\n"

# obtém todas as linhas que começam com vogais
echo -e "Mostrando todas as linhas que começam com vogais..."
linhas_vogais=`grep ^[aeiouAEIOU] $1`
echo -e "$linhas_vogais\n"


# obtém todas as linhas cuja segida letroa é a consoante y
echo -e "Mostrando todas as linhas cuja segunda letra é a letra y...\n"
linhas_y=`grep ^.[y] $1`
echo -e "$linhas_y\n"

# obtém todas as linhas cujo o tamanho é 27
echo -e "Mostrando todas as linhas que possuem o tamanho 27...\n"
linhas_tam=`grep '^.\{27\}$' $1`
echo -e "$linhas_tam\n"


