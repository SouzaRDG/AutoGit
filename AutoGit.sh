#!/bin/bash
#
# It will add the whole folder them make a commit and push
# Just because im kinda lazy and forget to make a commit and push after add


# Checking if git is initialized, else it will initialize git

dirname  = $PWD + "/.git" >&-

if [ ! -d $dirname ]
then
	echo "Initializing Git..."
	git init
else
	echo "Git already initialized, adding archives"
fi


git add *

echo "Arquivos adicionados" 

# Be careful cause it will remove all ignored files 
# (delete them permanently)

git add -u :/
echo "Removidos arquivos excluídos"

#    First variable is for the commit name

git commit -m $1

#

git push origin master
