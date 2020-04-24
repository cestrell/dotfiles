##############
### BASHRC ###
##############

# Test for an interactive shell. Do nothing if not running
[[ $- != *i* ]] && return

# Make 'less' more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# SHELL OPTIONS
HISTSIZE=99999							# Set history length
HISTFILESIZE=99999						# TODO
HISTCONTROL='ignoredups'				# Ignore duplicate commands
HISTIGNORE='ls:pwd:mkdir:cd:c:la:eb:sb' # Commands to ignore in history file 
PROMPT_DIRTRIM=3						# Trim prompt to 3 subdirectories

eval `dircolors -b $HOME/.dir_colors`	# Enable 'ls' coloring
shopt -s autocd							# cd to directory only using name
shopt -s checkwinsize					# Adjust to resized window
shopt -s histappend						# Append to history file, don't overwrite
shopt -s extglob						# TODO
# shopt -s cdable_vars					# TODO
# shopt -s cdspell						# TODO
# shopt -s cmdhist						# TODO
# shopt -s dirspell						# TODO
# shopt -s globstar						# TODO
# shopt -s nocaseglob					# TODO

export DESKTOP='/../mnt/c/Users/Administrator/Desktop/'
export PROJECTS='/../mnt/c/Users/Administrator/Desktop/Projects/'
export DISPLAY=:0
export THEOS=~/theos
export THEOS_DEVICE_IP="TODO" THEOS_DEVICE_PORT=22
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$THEOS/bin:$PATH"
export GREP_OPTIONS='--color=auto'


# USER PROMPT
BOLD="\[$(tput bold)\]"
BLU="\[\033[38;5;81m\]"
YEL="\[\033[0;33m\]"
RED="\[\033[0;31m\]"
DIR="[\w]\$ "
UNBOLD="\[$(tput sgr0)\]"
NONE="\[\033[0m\]"
PS1="$BOLD$BLU$DIR$UNBOLD$NONE"

if [ -f ~/.git_completion ]; then
	BRANCH="\$(__git_branch)"
	DIRTY="\$(__git_dirty)"
	PS1="$YEL$BRANCH$RED$DIRTY"$PS1
fi