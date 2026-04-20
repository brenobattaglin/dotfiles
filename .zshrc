eval $(/opt/homebrew/bin/brew shellenv)
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nord-extended/nord"

plugins=(
 fast-syntax-highlighting
 git
 history
 sudo
 web-search
 zsh-autosuggestions
 zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh