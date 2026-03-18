#!/usr/bin/env bash

# Check if Zsh is already the default shell
if [[ "$SHELL" != "/bin/zsh" ]]; then
    echo "Setting Zsh as default shell..."
    chsh -s /bin/zsh
fi

# Install oh-my-zsh if it's not already installed
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "Zsh and oh-my-zsh setup complete."
