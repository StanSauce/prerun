#!/bin/sh

# Tapestry
# Pre-Run Executable
# Stan Williams, Sauce Labs
# December 21, 2020

# This shell script will launch safari, visit a basic-auth reserved site, and log in.
# /usr/bin/safaridriver --enable

echo 'Running tapestry executable'

osascript <<-EOF 

tell application "Safari"

	activate

	tell application "System Events" to tell process "Safari"		keystroke "n" using command down
		delay 2
	end tell

	open location "https://development.stuartweitzman.com"

	delay 2

	tell application "System Events" to tell process "Safari"		keystroke "storefront" & tab & "Stuart123" & return
		delay 2
	end tellend tell
EOF

echo 'Complete Execution'