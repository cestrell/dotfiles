#####################
### BASH PROFILE ###
#####################

# Bash loads /etc/profile, then looks for (in order):
#    ~/.bash_profile
#    ~/.bash_login
#    ~/.profile
# and only executes the first one it finds.


# Load dotfiles
if [ -f ~/.git_completion ]; then
    source ~/.git_completion
fi 

if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
    set_SSH_agent
fi 

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi 


# Enable programmable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi