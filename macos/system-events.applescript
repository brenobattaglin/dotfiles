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
	tell dock preferences
		set animate to false
		set autohide to false
		set dock size to 0.1
		set magnification to false
		set minimize effect to scale
		set minimize into application to true
		set screen edge to right
		set show indicators to true
		set show recents to false
	end tell
end tell