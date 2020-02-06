####################
### BASH ALIASES ###
####################

# BASIC
alias c='clear'
alias rmrf='rm -rf'
alias v='vim'
alias vr='vim ~/'
alias ls='ls -FA'
alias ll='ls -l'
alias lt='ls | tr " " \n\t'

# EZ DOTFILE CONFIGURATION
alias ea='vi ~/.bash_aliases'								# Edit .bash_aliases
alias eb='vi ~/.bashrc'										# Edit .bashrc
alias vvim='vi ~/.vimrc'									# Edit .vimrc
alias sa='source ~/.bash_aliases'							# Source .bash_aliases
alias sb='source ~/.bashrc'									# Source .bashrc
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'	# Config dotfiles from anywhere

# VERSION CONTROL
alias gbranch='git symbolic-ref --short HEAD'

# MISC
alias pppath='echo $PATH | tr ":" "\n" | nl'				# Pretty print PATH 
alias dos2unix='dos2unix -u' #fromdos #sed -ri 's/\r$//'	# Change line endings 
alias exp='explorer.exe'									# Open folder explorer view
alias findhere='find . -name'								# Search current	
alias histgrep='history | cut -c 7- | sort -u | grep'		# Search history for commands
alias home='cd ~/../../mnt/c/Users/Administrator/Desktop'	# Jump to desktop
alias myip='curl http://ipecho.net/plain; echo'				# Print IP
alias newtheos='$THEOS/bin/nic.pl'							# Create new Theos project 
alias downloadgitignore='wget https://eecs280staff.github.io/p1-stats/dot_gitignore_sample -O .gitignore'
