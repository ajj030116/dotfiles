#!/bin/bash

if test ! $(xcode-select --print-path);
then
  echo "Installing xcode-stuff"
  xcode-select --install &> /dev/null

  # wait until done
  until xcode-select --print-path &> /dev/null;
  do
    sleep 5
  done

  printf 'Install XCode CLI Tools'
fi

if test ! $(which brew);
then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if test ! $(which nvm);
then
  echo "Installing nvm..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update

echo "Run brew bundling..."
brew bundle

# configure the shell
echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# configure tmux
git clone https://github.com/ajj030116/tpm.git ~/.tmux/plugins/tpm
git clone https://github.com/ajj030116/fonts.git ~/.powerline-fonts
git clone https://github.com/ajj030116/tmux-powerline.git ~/.tmux-powerline
~/.powerline-fonts/install.sh
# next time you open tmux run `prefix + I` to install plugins

# TODO(ajj): needs correcting for fish....
# nvm, node and npm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install --lts 17
npm i -g cost-of-modules csv2json elm elm-format elm-live elm-oracle iponmap is-up-cli json json2csv nodemon np public-ip-cli snazzy speed-test standard tfa tldr uglify-js vtop
# ├── cost-of-modules@1.0.1
# ├── csv2json@2.0.2
# ├── elm@0.19.1-3
# ├── elm-format@0.8.3
# ├── elm-oracle@1.1.1
# ├── elm-test@0.19.1-revision2
# ├── eslint@7.17.0
# ├── iponmap@1.1.0
# ├── is-up-cli@3.0.0
# ├── json@9.0.6
# ├── json2csv@5.0.0
# ├── np@6.2.0
# ├── npm@6.13.4
# ├── parcel@1.12.4
# ├── public-ip-cli@2.0.0
# ├── snazzy@9.0.0
# ├── speed-test@2.1.0
# ├── standard@16.0.3
# ├── tfa@2.0.0
# ├── tldr@3.3.2
# └── vtop@0.6.1


# python, pip, packages
sudo easy_install pip
pip install --user ansible
