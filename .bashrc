##############
### BASHRC ###
##############

# Test for an interactive shell and do nothing if not running
[[ $- != *i* ]] && return

# Make 'less' more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# SHELL OPTIONS
HISTSIZE=99999							# Set history length
HISTFILESIZE=99999						# TODO
HISTCONTROL='ignoredups'				# Ignore duplicate commands
HISTIGNORE='ls:pwd:mkdir:cd:c:la:eb:sb' # Commands to ignore in history file
PROMPT_DIRTRIM=3						# Trim prompt to 3 subdirectories

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

export DESKTOP="/../mnt/c/Users/Administrator/Desktop/"
export PROJECTS="/../mnt/c/Users/Administrator/Desktop/Projects/"

export TERM=xterm-256color
export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
export DISPLAY=$WSL_HOST:0.0
export LIBGL_ALWAYS_INDIRECT=1
export RABBITMQ_NODENAME=rabbit@localhost
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/Users/Administrator/Desktop/zulip"
# sudo ln -s "/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" /usr/bin/VBoxManage
# sudo ln -s "/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" /usr/bin/vboxmanage
# sudo /etc/init.d/dbus start &> /dev/null

export THEOS_DEVICE_IP="TODO"  THEOS_DEVICE_PORT=22

#PATH
export THEOS="$HOME/theos/bin"
export VBOX="/mnt/c/Programs\ Files/Oracle/VirtualBox"
export CARGO="$HOME/.cargo/bin"
export ASCII="$HOME/ascii"
export PATH="$ASCII:$CARGO:$THEOS:$VBOX:$PATH"


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
