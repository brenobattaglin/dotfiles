tell application "Finder" to quit
tell application "System Preferences" to quit

-- Appearance Suite
tell application "System Events"
	tell appearance preferences
		set appearance to graphite
		set dark mode to true
		set highlight color to blue
		set recent applications limit to 0
		set recent documents limit to 0
		set recent servers limit to 0
		set scroll bar action to jump to here
	end tell
end tell