##############
### BASHRC ###
##############

# Test for an interactive shell and do nothing if not running
[[ $- != *i* ]] && return

# Make 'less' more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# SHELL OPTIONS
HISTSIZE=99999							# Set session history length
HISTFILESIZE=99999						# Set total history length
HISTCONTROL='ignoredups'				# Ignore duplicate commands
HISTIGNORE='ls:pwd:mkdir:cd:c:la:eb:sb' # Commands to ignore in history file
PROMPT_DIRTRIM=3						# Trim prompt to 3 subdirectories

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

export DESKTOP="/../mnt/c/Users/cestr/Desktop/"
export PROJECTS="/../mnt/c/Users/cestr/Desktop/Projects/"

export TERM=xterm-256color
export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
export DISPLAY=$WSL_HOST:0.0
export LIBGL_ALWAYS_INDIRECT=1
export RABBITMQ_NODENAME=rabbit@localhost
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/Users/Administrator/Desktop/zulip"
export GO111MODULE=on
# sudo ln -s "/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" /usr/bin/VBoxManage
# sudo ln -s "/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe" /usr/bin/vboxmanage
# sudo /etc/init.d/dbus start &> /dev/null

export THEOS_DEVICE_IP="TODO"  THEOS_DEVICE_PORT=22

#PATH
export THEOS="$HOME/theos"
export VBOX="/mnt/c/Programs\ Files/Oracle/VirtualBox"
export CARGO="$HOME/.cargo/bin"
export ASCII="$HOME/ascii"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export GO="/usr/local/go/bin:/$HOME/go/bin"

export ANDROID_HOME="/mnt/c/Users/cestr/Desktop/projects/Android"
export ANDROID_TOOLS="$ANDROID_HOME/cmdline-tools/cmdline-tools/tools"
export ANDROID_TOOLS_BIN="$ANDROID_TOOLS/bin"
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/cmdline-tools/cmdline-tools/platform-tools"
export ANDROID_ALL="$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS_BIN:$ANDROID_TOOLS:$ANDROID_HOME"
export SPICETIFY="/home/cestrell/.spicetify"

export PATH="$PATH:$GO:$SPICETIFY:$ANDROID_ALL:$JAVA_HOME:$ASCII:$CARGO:$THEOS:$VBOX"

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
