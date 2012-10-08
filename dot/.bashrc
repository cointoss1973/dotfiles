# -*- coding: utf-8-unix -*-

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# bash completion for the Mercurial distributed SCM
if [ -f ~/hgrepo/hg/contrib/bash_completion ]; then
	. ~/hgrepo/hg/contrib/bash_completion
fi


export SHELL=/bin/bash
export TMPDIR=/tmp
export TZ=JST-09
export MAKE_MODE=unix
#export LANG=ja_JP.SJIS
export LANG=ja_JP.UTF-8
##export LESSCHARSET=utf-8

#PATH=./:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin:$PATH
PATH=/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin:/cygdrive/c/Meadow/bin:$PATH
export PATH
export PAGER=less
export EDITOR=emacs

#PS1="\w/\t> "

if [ -n ${DISPLAY} ]; then
    export DISPLAY=localhost:0.0
fi

if [ ! -n "${TERM}" ]; then
    TERM=cygwin
fi

alias la="ls -aF"
alias ll="ls -al"
alias ls="ls -CF --color=auto --show-control-chars"
#alias cp="cp -vip"
#alias mv="mv -vi"
#alias rm="rm -vi"
alias more="less"
alias v=$EDITOR

alias h="history"

# GNU Global
funcs()
{
    local cur
    cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=(`global -c $cur`)
}
complete -F funcs global

