#!/bin/sh
#
# Mac OS system setup

echo "Closing system preferences to prevent overring changes"
osascript -e 'tell application "System Preferences" to quit'
echo "System preferences closed."

# Enable dark mode, even it it's already enabled
echo "Enabling dark mode.."
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
echo "Dark mode enabled."

echo "Setting dock position to right.."
defaults write com.apple.dock orientation -string "right"
echo "Dock position set to right."

echo "Disabling power nap.."
sudo pmset -a powernap 0
echo "Power nap disabled."