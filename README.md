[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

# Dotfiles
Collection of text-based configuration files and directories with a . prepended to their name.

Contains shortcuts, tweaks, scripts, and settings that configure many aspects of the system.

Useful for faster workflow setup and restoration when needed.

## Setup
```
# Initial repo creation
git clone --bare <git-repo-url> $HOME/.cfg
```

```
# Create an alias for easy management
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

## Vim+

### Colorscheme
[One Dark](https://github.com/joshdick/onedark.vim)

### Extra Configuration
```
apt install vim-gui-common
```
