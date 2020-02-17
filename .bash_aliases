####################
### BASH ALIASES ###
####################

# BASIC
alias c='clear'
alias ls='ls -F'
alias la='ls -a'
alias ll='ls -l'
alias lt='ls | tr " " \n\t'
alias rmrf='rm -rf'
alias v='vim'
alias vr='vim ~/'

# EZ DOTFILE CONFIGURATION
alias ea='vi ~/.bash_aliases'								# Edit .bash_aliases
alias eb='vi ~/.bashrc'										# Edit .bashrc
alias vvim='vi ~/.vimrc'									# Edit .vimrc
alias sa='source ~/.bash_aliases'							# Source .bash_aliases
alias sb='source ~/.bashrc'									# Source .bashrc
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'		# Config dotfiles from anywhere

# MISC
alias home='cd $DESKTOP'									# Jump to desktop
alias projects='cd $PROJECTS'								# Jump to projects
alias pppath='echo $PATH | tr ":" "\n" | nl'				# Pretty print PATH 

alias dos2unix='dos2unix -u' #fromdos #sed -ri 's/\r$//'	# Change line endings 
alias downloadgitignore='wget https://eecs485staff.github.io/p1-insta485-static/dot_gitignore_sample -O .gitignore'
alias exp='explorer.exe'									# Open folder explorer view
alias findhere='find . -name'								# Search current	
alias histgrep='history | cut -c 7- | sort -u | grep'		# Search history for commands
alias myip='curl http://ipecho.net/plain; echo'				# Print IP
alias newtheos='$THEOS/bin/nic.pl'							# Create new Theos project 
