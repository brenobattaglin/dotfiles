eval $(/opt/homebrew/bin/brew shellenv)
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nord-extended/nord"

plugins=(
 aliases
 fast-syntax-highlighting
 docker-compose
 docker
 git
 gitignore
 gh
 history
 sudo
 thefuck
 web-search
 zoxide
 zsh-autosuggestions
 zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh