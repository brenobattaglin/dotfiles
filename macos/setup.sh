#!/bin/sh
#
# Mac OS system setup

echo "Closing system preferences to prevent overring changes"
osascript -e 'tell application "System Preferences" to quit'
echo "Done."

echo "Running system events script.."
osascript system-events.applescript