#!/bin/sh
#
# Mac OS system setup

# Enable dark mode, even it it's already enabled
echo "Enabling dark mode.."
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
echo "Dark mode enabled"