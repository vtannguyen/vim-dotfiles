# Dotfiles for vim
This repository consists of all config files for better vim usage.

## Installation
This intallation guide is for Fedora 30

* First you should remap CAPS to ESCAPE and CTRL (when held) key by following the instructions
in http://nelsonware.com/blog/2019/04/30/how-to-map-caps-lock-to-escape-and-control-on-fedora-via-caps2esc.html

* Then install wl-clipboard for system clipboard copy and paste
`sudo dnf install wl-clipboard`
 
* Next clone the repo to dir ~/.vim
`git clone https://github.com/vtannguyen/vim-dotfiles.git ~/.vim`

* Copy file .vimrc-main out and change it's name to .vimrc
* Finally open vim and install all plugins by typing `:PluginInstall`
* Note: the plugin `YouCompleteMe` and `vim-pydocstring` require manual installation

Enjoy!!!

### Debian Intallation

On a debian system make sure you install vim-python-jedi for proper code
completion
