[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

# Dotfiles
Shortcuts, tweaks, scripts, and settings that configure many aspects of the system.

Useful for faster workflow setup and restoration when needed.

## Setup

Initial repo creation.
```
git clone --bare <git-repo-url> $HOME/.cfg
# Or
git clone --bare https://github.com/cestrell/Dotfiles/ $HOME/.cfg
```

Create an alias for easy management.
```
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Hide untracked files.
```
cfg config --local status.showUntrackedFiles no
```

Don't create weird recursion problems.
```
echo ".cfg" >> ~/.gitignore
```

Checkout content to your $HOME.

NOTE: Backup (or delete, if unneeded) existing content if conflicts occur.

```
cfg checkout
```

## Additional Resources

### Windows X Server
Some GUI applications will not work on WSL without an X-Server.
[vcXsrv](https://sourceforge.net/projects/vcxsrv/)

### Vim+
Colorscheme: [One Dark](https://github.com/joshdick/onedark.vim)

If vim :version is 'Small version without GUI'
```
apt-get install vim-gui-common
apt-get install vim-runtime

apt-get install vim-gnome
```

### sudoers.lecture
[SUDOwoodo](https://github.com/0aax/sudowoodo)

### PEDA for GDB
[PEDA](https://github.com/longld/peda)

### rockyou.txt
[Download](https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt)

