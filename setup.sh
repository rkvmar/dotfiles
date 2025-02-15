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
  [ -f ~/.zshrc ] && mv ~/.zshrc{,.bak}
  [ ! -d ~/powerlevel10k ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme \n source ~/dotfiles/terminal/p10k.zsh' >>~/.zshrc
  # echo 'source ~/dotfiles/terminal/p10k.zsh' >> ~/.zshrc
  # source ~/.zshrc
  # exec zsh
}

function nvim-setup {
  mv ~/.config/nvim{,.bak}
  cp -a ./nvim ~/.config
}
install-brew-dependencies
zsh-setup
nvim-setup
