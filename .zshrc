ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
#zinit snippet OMZP::aws
#zinit snippet OMZP::kubectl
#zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

autoload -Uz compinit
compinit -C

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

export EDITOR="nvim"
export VISUAL="nvim"

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin.json)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

alias nix-rebuild="sudo darwin-rebuild switch --flake ~/nix#macos"
alias ls='ls --color'
alias lg='lazygit'
alias t='tuxedo'
alias tr='tree -C'
alias frcbuild='./gradlew build -Dorg.gradle.java.home="/Users/ravi/wpilib/2026/jdk"'
alias n='nvim'
alias nf='nvim $(fzf)'
alias c='clear'
alias y='yazi'

if [[ -z "$TMUX" && -n "$PS1" ]]; then
  tmux attach-session -t main 2>/dev/null || tmux new-session -s main
fi

# opencode
export PATH=/Users/ravi/.opencode/bin:$PATH

# pnpm
export PNPM_HOME="/Users/ravi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# terminal-wakatime setup
eval "$(terminal-wakatime init)"
export PATH="$PATH:$(go env GOPATH)/bin"

# tuxedo
export TODO_DIR="$HOME/todo"
export TODO_FILE="$TODO_DIR/todo.txt"
export DONE_FILE="$TODO_DIR/done.txt"

. "$HOME/.local/bin/env"
