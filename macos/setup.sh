#!/bin/bash

# Disable dock animation
defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock

# Disable gatekeeper
sudo spctl --master-disable
