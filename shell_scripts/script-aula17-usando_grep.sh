#!/bin/bash

# grep filtra arquivos de textos de um arquivo ou string 
# -v seleciona somente linhas nao coincidentes
# ^java: o que começa com a palavra java, por conta do -v ele pegara o que noa começa com a palavra java 
# $1 primeiro argumento
# so pegara as linhas que nao começa com java
grep -v ^java $1
