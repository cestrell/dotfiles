####################
### BASH ALIASES ###
####################

# BASIC
alias c='clear'
alias grep='grep --color=auto'
alias ls='ls --color=auto --group-directories-first -h --quoting-style=literal'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lA'
alias lll='ls | tr " " \n\t'
alias rmrf='rm -rf'
alias v='vim'
alias vall='code ~ &'

# EZ DOTFILE CONFIGURATION
alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'		# Config dotfiles from anywhere

# editing
alias ea='vi $HOME/.bash_aliases'							# Edit .bash_aliases
alias eb='vi $HOME/.bashrc'									# Edit .bashrc
alias ef='vi $HOME/.bash_functions'                         # Edit .bash_functions
alias ep='vi $HOME/.bash_profile'							# Edit .bash_profile
alias vv='vi $HOME/.vimrc'								    # Edit .vimrc

# sourcing
alias sa='source $HOME/.bash_aliases'						# Source .bash_aliases
alias sb='source $HOME/.bashrc'								# Source .bashrc
alias sf='source $HOME/.bash_functions'                     # Source .bash_functions
alias sp='source $HOME/.bash_profile'                       # Source .bash_profile
alias reload='c && sp'										# Refresh bash files

# displaying
alias ca='cat $HOME/.bash_aliases'							# Display .bash_aliases
alias cb='cat $HOME/.bashrc'								# Display .bash_rc
alias cf='cat $HOME/.bash_functions'						# Display .bash_functions
alias cpr='cat $HOME/.bash_profile'							# Display .bash_profile
alias cv='cat $HOME/.vimrc'									# Display .vimrc

# TELEPORT
alias home='cd $DESKTOP'									# Jump to desktop

# MISC
alias ppp='echo \$PATH= && echo $PATH | tr ":" "\n" | nl'   # Pretty print PATH var
alias vcheat='cat $HOME/.vim/cheatsheet'                    # Display vim cheatsheet

alias exp='explorer.exe &'									# Open folder explorer view
alias d2u='dos2unix -u'                                     # Change line endings  alt: fromdos, sed -ri 's/\r$//'
alias newtheos='$THEOS/nic.pl'  							# Create new Theos project

alias search='find . -name'								    # Search current directory
alias hg='history | cut -c 7- | sort -u | grep'		        # Search history for commands
alias myip='curl http://ipecho.net/plain; echo'				# Print IP

alias weatheraa='curl http://wttr.in/ann_arbor?Tn1'         # Display weather for Ann Arbor
alias weatherd='curl http://wttr.in/detroit?Tn1'			# Display weather for Detroit

alias poke='pokemon-colorscripts -r'

# LONG BOIS
alias fless="less --shift 5 --ignore-case --chop-long-lines --RAW-CONTROL-CHARS --LONG-PROMPT"
