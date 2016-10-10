sudo apt-get install -y zsh htop tmux python-dev python-pip ruby build-essential
sudo gem install --no-rdoc --no-ri tmuxinator
sudo pip install glances
git clone --recursive https://github.com/ajj030116/prezto.git ~/.zprezto
git clone https://github.com/ajj030116/tpm.git ~/.tmux/plugins/tpm
git clone https://github.com/ajj030116/fonts.git ~/.powerline-fonts
git clone https://github.com/ajj030116/tmux-powerline.git ~/.tmux-powerline
~/.powerline-fonts/install.sh

# now run `sudo vipw` and edit the /etc/passwd file for user to use /usr/bin/zsh as shell
# next time you open tmux run `prefix + I` to install plugins
