#!/bin/bash

ARCH=$(uname -s)-$(uname -m)

function copy_dotfiles
{
	DOT_FILES=$(ls -a dot/.??*)   # at least 3words...
 	for dst in ${DOT_FILES[@]}
	do
		src=${dst##*/}
		cp -p $HOME/$src $HOME/dotfiles/$dst
		echo $HOME/$src "->" $HOME/dotfiles/$dst 
	done
}

if [[ $ARCH = MINGW* ]]; then
	# Oh... No support symblic link system
	copy_dotfiles
else
	echo No Need. Maybe symbolic link support system.
fi

