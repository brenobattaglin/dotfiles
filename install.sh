#!/bin/bash
#
# oh-my-zsh

echo "Checking oh-my-zsh.."
if [[ ! -d ~/.oh-my-zsh ]]
then
    echo "Installing oh-my-zsh.."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh-my-zsh already installed"
fi