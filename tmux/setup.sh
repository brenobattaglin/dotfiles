#!/bin/sh

# tmux/setup.sh
# Automates the setup of tmux configuration.

echo "Copying tmux configuration..."
cp tmux/.tmux.conf "$HOME/.tmux.conf"

echo "tmux setup complete."
