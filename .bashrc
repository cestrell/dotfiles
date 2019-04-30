# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000
HISTIGNORE='ls:pwd:mkdir:cd:c:la:eb:sb'
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s extglob
shopt -s autocd
PROMPT_DIRTRIM=3
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

PS1="\n\[$(tput bold)\]\[\033[38;5;81m\][\w]\$ \[$(tput sgr0)\]"

# Import aliases and functions
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

function make-alias () {
	echo "alias $1='$2'" >> ~/.bash_aliases
}

function cr() {
	DIR=$1
	shift
	rsync -rtv --exclude '.git*' --exclude '.vs*' --exclude 'Debug*' ./ cestrell@login.engin.umich.edu:"$DIR"
}

function git-dir() {
    DIR=$1
	shift
	git --git-dir="$DIR/.git" --work-tree="$DIR" "$@"
}

function p {
	home
	cd $1/project$2

}
export DOCKER_HOST=tcp://localhost:2375
