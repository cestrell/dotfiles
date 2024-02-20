[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

# dotfiles
Shortcuts, tweaks, scripts, and settings that configure system.

Useful for faster workflow setup and restoration when needed.

## Setup

### NOTE: Backup existing dotfiles BEFORE setup.

Initial repo creation:
```
git clone --bare https://github.com/cestrell/Dotfiles/ $HOME/.cfg
```

Create a link between dotfiles and alias to edit & update git repo from any folder:
1. Create an alias for easy management.
2. Hide untracked files using newly created alias.(they bother me)
3. Avoid weird git recursion problems by ignoring dotfiles folder.
4. Checkout content to $HOME.

```
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
echo ".cfg" >> ~/.gitignore
cfg checkout
```
---
# Additional Resources

### VIM++
Colorscheme: [One Dark](https://github.com/joshdick/onedark.vim)

Check if `vim :version` == 'Small version without GUI' and update if needed
```
apt-get install vim-gui-common
apt-get install vim-runtime
```

### SUDO LECTURE BUDDIES
#### Custom messages for /etc/sudoers.d/sudoers.lecture

ASCII [SUDOwoodo](https://github.com/0aax/sudowoodo):
```
curl https://raw.githubusercontent.com/0aax/sudowoodo/colour/sudowoodo.lecture -o sudowoodo
sudo cp groot.txt /etc/sudoers.d/sudoers.lecture
```
ASCII groot
```
curl https://caferock.org/chris/groot.txt -o groot
sudo cp groot.txt /etc/sudoers.d/sudoers.lecture
```

### POKEMON COLORSCRIPTS
[pokemon-colorscripts](https://gitlab.com/phoneybadger/pokemon-colorscripts): Print pokemon to terminal

### WINDOWS X SERVER
[vcXsrv](https://sourceforge.net/projects/vcxsrv/): Some GUI applications will not work on WSL without an X-Server.

### PEDA FOR GDB
[PEDA](https://github.com/longld/peda): Python Exploit Development Assistance for GDB. Enhance GDG GUI for ez debugging and exploit development.

### ZSH
[ZSH Installation](https://github.com/ohmyzsh/ohmyzsh#basic-installation)

### MISC.
[rockyou.txt](https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt): Common words dictionary useful for password cracking

