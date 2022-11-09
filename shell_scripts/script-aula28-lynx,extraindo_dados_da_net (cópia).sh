#!/bin/bash


# extrair dados da internet
# usaremos o navegador de texto lynx
# lynx -dump -nolist http://www.geeksbr.com > geeksbr.txt

# -dump renderiza a página html e manda para saída padrão (STD OUT)
# -nolist omite a lista de links

# um script que retorne os títulos dos último post 


posts=`lynx -dump -nolist http://www.geeksbr.com | grep '^[A-Z]'`

echo "$posts"
