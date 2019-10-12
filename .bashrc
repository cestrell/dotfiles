######################
### BASH FUNCTIONS ###
######################

# ~/.bashrc: executed by bash(1) for non-login shells.

[ -z "$PS1" ] && return # If not running interactively, don't do anything

# Set User Prompt
PS1="\[$(tput bold)\]\[\033[38;5;81m\][\w]\$ \[$(tput sgr0)\]"

# Terminal Properties
HISTSIZE=5000						# Set history length 
HISTFILESIZE=5000					#
HISTIGNORE='ls:pwd:mkdir:cd:c:la:eb:sb' # Commands for history file to ignore
PROMPT_DIRTRIM=3					#

shopt -s autocd						# 
shopt -s checkwinsize				# check window size after commands
shopt -s extglob					#
shopt -s histappend					# append to history file, don't overwrite it

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Import aliases and functions
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Enable programmable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Quickly append alias
function quickalias () {
	echo "alias $1='$2'" >> ~/.bash_aliases
}

# rsync current directory to CAEN (school computer network)
function cr() {
	DIR=$1
	shift
	rsync -rtv --exclude '.git*' --exclude '.vs*' --exclude 'Debug*' ./ cestrell@login.engin.umich.edu:"$DIR"
}

# Easily control git directories from anywhere
function git-dir() {
    DIR=$1
	shift
	git --git-dir="$DIR/.git" --work-tree="$DIR" "$@"
}

# Quickly jump to class projects
function p {
	home				# Jump to desktop
	cd $1/project$2		# Directory(1) with 'project' subdirectory(2)

}
