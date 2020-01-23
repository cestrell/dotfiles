##############
### BASHRC ###
##############

PS1="\[$(tput bold)\]\[\033[38;5;81m\][\w]\$ \[$(tput sgr0)\]"	# User Shell Prompt

HISTSIZE=5000							# Set history length 
HISTFILESIZE=5000						#
HISTIGNORE='ls:pwd:mkdir:cd:c:la:eb:sb' # Commands for history file to ignore
PROMPT_DIRTRIM=3						# Trim prompt to 3 subdirectories

shopt -s autocd							# cd to directory only using name
shopt -s checkwinsize					# Check window size after commands
shopt -s extglob						# 
shopt -s histappend						# Append to history file, don't overwrite it


[ -z "$PS1" ] && return											# If not running interactively, don't do anything
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"	# Make 'less' more friendly for non-text input files, see lesspipe(1)

# Import aliases and functions
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Enable programmable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# Quickly append alias
function quickalias() {
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
	home				# Jump to desktop using alias
	cd $1				# Jump to given project directory
}
