#!/bin/sh

# Tapestry
# Pre-Run Executable
# Stan Williams, Sauce Labs
# December 21, 2020

# This shell script will launch safari, visit a basic-auth reserved site, and log in.


echo 'Running tapestry executable'

osascript <<-EOF 



tell application "Safari"

	activate

	open location "https://development.stuartweitzman.com"

	delay 1

	tell application "System Events" to tell process "Safari"		--	keystroke tab		keystroke "storefront" & tab & "Stuart123" & return	end tellend tell
EOF

echo 'Complete Execution'