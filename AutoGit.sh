#!/bin/bash
#
# It will add the whole folder them make a commit and push
# Just because im kinda lazy and forget to make a commit and push after add
# 
git add *
echo "Arquivos adicionados" 
#
#    First variable is for the commit name
git commit -m $1
#
#
git push origin master
#
#
