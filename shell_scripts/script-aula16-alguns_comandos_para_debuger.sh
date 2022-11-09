#!/bin/bash

# bash -x ./nome_do_script mostra os comando sendo executados passo a passo
# ++ significa que a escressão foi usada por um subshell
# -v mostra a linha atual que seu programa está executando
n1=10
n2=20
r=`expr $n1 + $n2` 
echo "Soma: $r"
