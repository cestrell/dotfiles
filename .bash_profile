#####################
### .BASH_PROFILE ###
#####################

# Load .bashrc if possible
if [ -f ~/.bashrc ]; then
	source ~/.bash_aliases
	source ~/.bashrc
fi

# Set some environment variables
export DISPLAY=:0
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$THEOS/bin:$PATH"
export THEOS=~/theos
export THEOS_DEVICE_IP="TODO"  THEOS_DEVICE_PORT=22