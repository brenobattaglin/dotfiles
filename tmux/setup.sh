#!/bin/sh

# tmux/setup.sh
# Automates the setup of tmux configuration.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Copying tmux configuration..."
cp -f "$SCRIPT_DIR/.tmux.conf" "$HOME/.tmux.conf"

# Install TPM if not already present
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "Installing Tmux Plugin Manager (tpm)..."
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

echo "tmux setup complete."
echo ""
echo "To finish setup and install the plugins:"
echo "1. Run tmux"
echo "2. Run 'tmux source ~/.tmux.conf'"
echo "3. Use Prefix + I to install the plugins"
