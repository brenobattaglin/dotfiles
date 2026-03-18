# zsh/aliases.zsh
# Modernized and organized aliases for common shell tasks.

# Navigation: Faster moving between directories
alias l='ls -lah'
alias ll='ls -lh'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git: Streamlined source control workflow
alias gst='git status'
alias gad='git add'
alias gcm='git commit -m'
alias gpl='git pull'
alias gps='git push'

# System: Utilities and environment helpers
alias reload='source ~/.zshrc'
alias path='echo $PATH | tr ":" "\n"'

# Project-specific: Quick access to this dotfiles repository
alias dotfiles='cd ~/Developer/dotfiles'
