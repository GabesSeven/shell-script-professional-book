#!/bin/bash

# tr apenas substitui um caracter pelo outro
echo "$1,$2,$3" | tr "," "\n" | sort
