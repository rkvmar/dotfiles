#!/usr/bin/env zsh

function install-brew-dependencies {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo >> ~/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
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
install-brew-dependencies
zsh-setup
nvim-setup
