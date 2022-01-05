#!/bin/bash

# install and configure the shell 
sudo apt-get install -y fish
echo '/usr/bin/fish' | sudo tee -a /etc/shells
sudo usermod --shell /usr/bin/fish ajj
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# install and configure tmux
sudo apt-get install -y tmux
git clone https://github.com/ajj030116/tpm.git ~/.tmux/plugins/tpm
git clone https://github.com/ajj030116/fonts.git ~/.powerline-fonts
git clone https://github.com/ajj030116/tmux-powerline.git ~/.tmux-powerline
~/.powerline-fonts/install.sh
# next time you open tmux run `prefix + I` to install plugins

## install micro 
curl https://getmic.ro | bash 
sudo mv micro /usr/bin

# install other useful packages
sudo apt-get install -y htop python-dev python-pip build-essential
sudo pip install glances