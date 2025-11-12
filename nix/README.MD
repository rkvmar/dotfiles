# Nix Configs

## 1. Install Nix
```
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)
git clone https://github.com/rkvmar/nix-configs.git ~/nix
sudo nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake ~/nix#macos
sudo darwin-rebuild switch --flake ~/nix#macos
```

## 2. Install Configs
```
git clone https://github.com/rkvmar/dotfiles.git ~/dotfiles
mv ~/.zshrc ~/.zshrc.bak
cp ~/.configs ~/.configs-backup
cd dotfiles
stow --adopt .
```
