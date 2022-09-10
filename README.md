# Dotfiles for vim
This repository consists of all config files for better vim usage.

## Installation
This intallation guide is for Fedora 30

* To remap CAPS to ESCAPE and CTRL (when held) key, please run the script `install_caps2esc.sh`. The script is written following the instructions in [How to map capslock to escape and control](http://nelsonware.com/blog/2019/04/30/how-to-map-caps-lock-to-escape-and-control-on-fedora-via-caps2esc.html)
```sh
sudo ./install_caps2esc.sh
```


* Then install wl-clipboard for system clipboard copy and paste
```sh
sudo dnf install wl-clipboard
```
 
* Install vim and download the configurations
```sh
sudo dnf install -y vim
git clone https://github.com/vtannguyen/vim-dotfiles.git ~/.vim && cp ~/.vim/.vimrc ~/
```

* Install code formatters
```sh
./install_formatters.sh
```

* Open vim and install all plugins by typing `:PlugInstall`

Enjoy!!!

### Debian Intallation

On a debian system make sure you install vim-python-jedi for proper code
completion
