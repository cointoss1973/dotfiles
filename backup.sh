#!/bin/bash

ARCH=$(uname -s)-$(uname -m)

function copy_dotfiles
{
    for dst in `find dot -name .\*`
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

