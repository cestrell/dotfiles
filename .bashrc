##############
### BASHRC ###
##############

# Test for an interactive shell and do nothing if not running
[[ $- != *i* ]] && return

# SHELL OPTIONS
shopt -s autocd							# cd to directory only using name
shopt -s checkwinsize					# Adjust to resized window
shopt -s histappend						# Append to history file, don't overwrite
shopt -s extglob						# Enable extended pattern matching features
shopt -s cdable_vars					# Assumes that cd argument is variable with value=directory
shopt -s cdspell						# Attempt cd directory spell correction
shopt -s cmdhist						# Save multi-line commands in same history entry
shopt -s dirspell						# Attempt directory spell correction
shopt -s direxpand						# Directory name word expansion
shopt -s globstar						# Find files recursively using globstar (**)
shopt -s nocaseglob						# Case insensitive filename globbing

# MORE SHELL OPTIONS
HISTSIZE=99999							# Set session history length
HISTFILESIZE=99999						# Set total history length
HISTCONTROL='ignoredups'				# Ignore duplicate commands
HISTIGNORE='ls:pwd:mkdir:cd:c:la:eb:sb' # Commands to ignore in history file
PROMPT_DIRTRIM=3						# Trim prompt to 3 subdirectories

# ENVIRONMENT VARIABLES
export WINMNT="/mnt/c/"
export DESKTOP="$WINMNT/Users/cestr/Desktop/"
export PROJECTS="$WINMNT/Users/cestr/Desktop/Projects/"
export THEOS="$HOME/theos"
export CARGO="$HOME/.cargo/bin"
export ASCII="$HOME/ascii"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export GO="/usr/local/go/bin:/$HOME/go/bin"
export VBOX="/mnt/c/Programs\ Files/Oracle/VirtualBox"

export PATH="$PATH:$GO:$JAVA_HOME:$ASCII:$CARGO:$THEOS:$VBOX"

# WSL DISPLAY CONFIGURATION
export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
export LIBGL_ALWAYS_INDIRECT=1
export TERM=xterm-256color
# export DISPLAY=$WSL_HOST:0.0

# CONFIGURATION
export RABBITMQ_NODENAME=rabbit@localhost
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="$WSL_HOST/Users/Administrator/Desktop/zulip"
export GO111MODULE=on

# USER PROMPT
BOLD="\[$(tput bold)\]"
BLU="\[\033[38;5;81m\]"
YEL="\[\033[0;33m\]"
RED="\[\033[0;31m\]"
DIR="[\w]\$ "
UNBOLD="\[$(tput sgr0)\]"
NONE="\[\033[0m\]"
PS1="$BOLD$BLU$DIR$UNBOLD$NONE"

if [ -f $HOME/.git_completion ]; then
	BRANCH="\$(__git_branch)"
	#DIRTY="\$(__git_dirty)"
	PS1="$YEL$BRANCH"$PS1
fi
