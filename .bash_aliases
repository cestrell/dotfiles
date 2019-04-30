# Aliases
alias la='ls -FA'
alias ls='ls -F'
alias ll='ls -Fl'

alias vi='vim'
alias rm='rm'
alias rmrf='rm -rf'

alias gita='git add'
alias gitc='git commit'
alias gitcm='git commit -m'
alias gits='git status'
alias gitp='git push'

alias subcmd='echo "dos2unix -u *; tar -czf ./submit.tar.gz *.cpp *.h Makefile test-*.txt"'

alias pls='sudo $!!'
alias home='cd ~/../../mnt/c/Users/User/Desktop'
alias ..='cd .. && pwd && lsl'

alias eb='vi ~/.bashrc'				# edit .bashrc
alias .b='source ~/.bashrc'			# source .bashrc
alias sb='source ~/.bashrc'			# source .bashrc


alias ea='vi ~/.bash_aliases'             # edit .bash_aliases
alias .a='source ~/.bash_aliases'         # source .bash_aliases
alias sa='source ~/.bash_aliases'         # source .bash_aliases

alias config='git-dir ~/dotfiles'	# git for dotfiles in other dirs

alias c='clear'
alias v='vi'

alias newtheos='$THEOS/bin/nic.pl'

alias histgrep='history | cut -c 7- | sort -u | grep'
alias myip='curl http://ipecho.net/plain; echo'
alias fhere='find . -name'
alias df='df -Tha --total'

alias downloadgitignore='wget https://eecs280staff.github.io/p1-stats/dot_gitignore_sample -O .gitignore'

alias dos2unix='dos2unix -u'
alias lst='ls | tr " " \n\t'
alias lsl='ls -l'
alias lsa='ls -a'
alias exp='explorer.exe'
