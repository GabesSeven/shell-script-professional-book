#!/bin/bash
# bash -n <arquivo>, análisa se possui um erro de sintaxe, com essa opcao o código é testado não é executado
# tr traduz, comprime e/ou apaga caracteres da entrada padrão

texto='www.geekbr.com'
texto=$(echo $texto | tr a-z A-Z) # pipe (|), redireciona o dados de saída de um comando para o outro
echo $texto

