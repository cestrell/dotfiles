####################
### BASH ALIASES ###
####################

# Basic
alias c='clear'
alias rmrf='rm -rf'
alias v='vim'
alias la='ls -FA'
alias ls='ls -F'
alias ll='ls -Fl'
alias lst='ls | tr " " \n\t'
alias lsl='ls -l'
alias lsa='ls -a'

# Dotfile Editing
alias ea='vi ~/.bash_aliases'		    # edit .bash_aliases
alias eb='vi ~/.bashrc'				      # edit .bashrc
alias sa='source ~/.bash_aliases'   # source .bash_aliases
alias sb='source ~/.bashrc'			    # source .bashrc

# EZ config for dotfiles from anywhere
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Version Control
alias gita='git add'
alias gitc='git commit'
alias gitm='git commit -m'
alias gitp='git push'
alias gits='git status'
alias gitpsuo='git push --set-upstream origin'

# Misc
alias ppath='echo $PATH | tr ":" "\n" | nl' 
alias dos2unix='dos2unix -u'
alias downloadgitignore='wget https://eecs280staff.github.io/p1-stats/dot_gitignore_sample -O .gitignore'
alias exp='explorer.exe'
alias findhere='find . -name'
alias histgrep='history | cut -c 7- | sort -u | grep'
alias home='cd ~/../../mnt/c/Users/Administrator/Desktop' # Jump to desktop
alias myip='curl http://ipecho.net/plain; echo'  # Print IP
alias newtheos='$THEOS/bin/nic.pl'				 # Create new Theos project 
