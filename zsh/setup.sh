#!/usr/bin/env bash

# zsh/setup.sh
# Automates the setup of Zsh, oh-my-zsh, and custom plugins and aliases.

# Colors for output to make logs readable
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Log functions for standardized output
info() { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Exit on any error and trap it to log a message
set -e
trap 'error "An error occurred during setup. Please check the logs above."' ERR

# Check if Zsh is already the default shell
if [[ "$SHELL" != "/bin/zsh" ]]; then
    info "Setting Zsh as default shell..."
    # chsh might require password
    chsh -s /bin/zsh || error "Failed to change shell to Zsh. You may need to run this manually."
fi

# Install oh-my-zsh if it's not already installed in the home directory
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    info "Installing oh-my-zsh..."
    # Use unattended install to avoid breaking the script
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || error "Failed to install oh-my-zsh."
fi

# Define custom directory for plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# Install zsh-autosuggestions plugin: provides fish-like suggestions as you type
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]]; then
    info "Installing zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions" || error "Failed to install zsh-autosuggestions."
fi

# Install zsh-syntax-highlighting plugin: provides syntax highlighting for shell commands
if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
    info "Installing zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" || error "Failed to install zsh-syntax-highlighting."
fi

# Copy modernized aliases to a persistent location
info "Copying modernized aliases..."
cp zsh/aliases.zsh "$HOME/.aliases.zsh" || error "Failed to copy aliases."

# Ensure .zshrc sources our custom configuration
if ! grep -q "source $HOME/.aliases.zsh" "$HOME/.zshrc"; then
    info "Adding aliases source to .zshrc..."
    echo "source $HOME/.aliases.zsh" >> "$HOME/.zshrc"
fi

success "Zsh and oh-my-zsh setup complete. Please restart your terminal."
