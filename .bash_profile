if [ -s ~/.bashrc ]; then
	source ~/.bashrc
fi

export THEOS=~/theos
export PATH=$THEOS/bin:$PATH
export THEOS_DEVICE_IP=35.3.109.104  THEOS_DEVICE_PORT=22

export PATH="$HOME/.cargo/bin:$PATH"
