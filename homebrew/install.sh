#!/bin/sh
#
# Homebrew

# Check for Homebrew and install if needed
echo "Checking Homebrew.."
if test ! $(which brew)
then
  echo "Installing Homebrew.."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else 
    echo "Homebrew already installed"
fi