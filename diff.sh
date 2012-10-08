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

diff_dotfiles
