#####################
### BASH PROFILE ###
#####################

# Bash loads /etc/profile, then looks for (in order):
#    ~/.bash_profile
#    ~/.bash_login
#    ~/.profile
# and only executes the first one it finds.

# Running bash
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then source "$HOME/.bashrc"; fi
fi

# Load dotfiles
if [ -f $HOME/.dir_colors ]; then eval `dircolors -b $HOME/.dir_colors`; fi
if [ -f $HOME/.git_completion ]; then source $HOME/.git_completion; fi
if [ -f $HOME/.bash_aliases ]; then source $HOME/.bash_aliases; fi
if [ -f $HOME/.bash_functions ]; then source $HOME/.bash_functions; fi
if [ -f $HOME/.inputrc ]; then source $HOME/.inputrc; fi

# Enable programmable completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    source /etc/bash_completion
fi

# Fun startup commands
commands=(
    "$(ls ~/ascii | shuf -n 1)"            # Random ASCII Art
    "pokemon-colorscripts -r"              # Random Pokemon
    "cbonsai -p"                           # Cbonsai with Random Plant
    "curl 'http://wttr.in/detroit?Tn1'"    # Weather in Detroit
)
random_index=$(shuf -i 0-$((${#commands[@]} - 1)) -n 1)
eval "${commands[$random_index]}"