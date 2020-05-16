#####################
### BASH PROFILE ###
#####################

# Bash loads /etc/profile, then looks for (in order):
#    ~/.bash_profile
#    ~/.bash_login
#    ~/.profile
# and only executes the first one it finds.

# Load dotfiles
if [ -f ~/.dir_colors ]; then eval `dircolors -b ~/.dir_colors`; fi
if [ -f ~/.git_completion ]; then source ~/.git_completion; fi
if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi
if [ -f ~/.bash_functions ]; then source ~/.bash_functions; fi
if [ -f ~/.bashrc ]; then source ~/.bashrc; fi

# Enable programmable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    source /etc/bash_completion
fi

# Surprise
~/ascii/$(ls ~/ascii | shuf -n 1)