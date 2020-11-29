[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

# Dotfiles
Shortcuts, tweaks, scripts, and settings that configure system.

Useful for faster workflow setup and restoration when needed.

## Setup

### NOTE: Backup existing content BEFORE setup.

Initial repo creation.
```
git clone --bare <git-repo-url> $HOME/.cfg
# OR
git clone --bare https://github.com/cestrell/Dotfiles/ $HOME/.cfg
```

Link dotfiles to an alias to edit & update from any folder. 
1. Create an alias for easy management.
2. Hide untracked files using newly created alias.
3. Avoid weird git recursion problems by ignoring dotfiles folder.
4. Checkout content to $HOME.

```
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
echo ".cfg" >> ~/.gitignore
cfg checkout
```

## Additional Resources

#### Vim++
Colorscheme: [One Dark](https://github.com/joshdick/onedark.vim)

If `vim :version` == 'Small version without GUI'
```
apt-get install vim-gui-common
apt-get install vim-runtime

apt-get install vim-gnome
```

#### Windows X Server
Some GUI applications will not work on WSL without an X-Server.
[vcXsrv](https://sourceforge.net/projects/vcxsrv/)

#### SUDOwoodo
ASCII sudowoodo for sudoers.lecture
[SUDOwoodo](https://github.com/0aax/sudowoodo)

#### PEDA for GDB
Python Exploit Development Assistance for GDB. Enhance GDG GUI for ez debugging and exploit development.
[PEDA](https://github.com/longld/peda)

#### rockyou.txt
Common words dictionary useful for password cracking
[Download](https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt)

