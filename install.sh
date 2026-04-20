#!/bin/bash
#
# install.sh — Dotfiles bootstrap script

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Homebrew
echo "Checking Homebrew.."
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew.."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo "Homebrew already installed"
fi

# oh-my-zsh
echo "Checking oh-my-zsh.."
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  echo "Installing oh-my-zsh.."
  RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "oh-my-zsh already installed"
fi

# zsh plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

echo "Checking zsh-autosuggestions.."
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]]; then
  echo "Installing zsh-autosuggestions.."
  git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
else
  echo "zsh-autosuggestions already installed"
fi

echo "Checking zsh-syntax-highlighting.."
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
  echo "Installing zsh-syntax-highlighting.."
  git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
else
  echo "zsh-syntax-highlighting already installed"
fi

echo "Done. Open a new terminal or run: source ~/.zshrc"