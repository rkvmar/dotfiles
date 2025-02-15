#!/usr/bin/env zsh

function install-brew-dependencies {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew install nvim
  brew install git
  brew install ripgrep
  brew install gh
}

function zsh-setup {
  source ./terminal/p10k.zsh
}

function nvim-setup {
  mv ~/.config/nvim{,.bak}
  cp -a ./nvim ~/.config
}
#install-brew-dependencies
#zsh-setup
nvim-setup
