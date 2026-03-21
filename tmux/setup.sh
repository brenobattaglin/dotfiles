#!/bin/sh

# tmux/setup.sh
# Automates the setup of tmux configuration.

echo "Copying tmux configuration..."
cp tmux/.tmux.conf "$HOME/.tmux.conf"

# Install TPM if not already present
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "Installing Tmux Plugin Manager (tpm)..."
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

echo "tmux setup complete."
