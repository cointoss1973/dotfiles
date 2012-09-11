#!/bin/bash

ARCH=$(uname -s)-$(uname -m)

function diff_dotfiles
{
    for dst in `find dot -name .\*`
    do
	src=${dst##*/}
	echo === $src ===
	diff $HOME/$src $HOME/dotfiles/$dst
    done
}

if [[ $ARCH = MINGW* ]]; then
    # Oh... No support symblic link system
    diff_dotfiles
else
    echo No Need. Maybe symbolic link support system.
fi

