
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export SHELL=/bin/bash
export TMPDIR=/tmp
export TZ=JST-09
export MAKE_MODE=unix
#export LANG=ja_JP.SJIS
export LANG=ja_JP.UTF-8

PATH=./:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin:$PATH
export PATH
export PAGER=lv
#export EDITOR=meadow

#PS1="\w/\t> "

if [ -n ${DISPLAY} ]; then
    export DISPLAY=localhost:0.0
fi

if [ ! -n "${TERM}" ]; then
    TERM=cygwin
fi

alias la="ls -aF"
alias ll="ls -l"
alias ls="ls -CF --color=auto"
alias cp="cp -vip"
alias mv="mv -vi"
alias rm="rm -vi"

