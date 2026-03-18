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

# Install zsh-autosuggestions plugin
if [[ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]]; then
    echo "Installing zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Install zsh-syntax-highlighting plugin
if [[ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]]; then
    echo "Installing zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# Copy modernized configuration to the right place
cp zsh/aliases.zsh "$HOME/.aliases.zsh"

# Update .zshrc to include our custom configuration
if ! grep -q "source $HOME/.aliases.zsh" "$HOME/.zshrc"; then
    echo "source $HOME/.aliases.zsh" >> "$HOME/.zshrc"
fi

echo "Zsh and oh-my-zsh setup complete."
