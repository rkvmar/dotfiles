# source ~/dotfiles/terminal/p10k.zsh
# source ~/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin.json)"
eval "$(zoxide init zsh)"
alias nix-rebuild="sudo darwin-rebuild switch --flake ~/nix#macos"
