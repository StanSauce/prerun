#!/bin/sh

# Tapestry
# Pre-Run Executable
# Stan Williams, Sauce Labs
# December 21, 2020

# This shell script will launch safari, visit a basic-auth reserved site, and log in.
# /usr/bin/safaridriver --enable

echo 'Running tapestry executable'

osascript <<-EOF 

# run after site visited
delay 10

tell application "Safari"

    tell window 1
        set current tab to (make new tab with properties {URL:"https://development.stuartweitzman.com"})
    end tell
	
    delay 2
	
    tell application "System Events" to tell process "Safari"	
	-- provide credentials, submit	keystroke "storefront" & tab & "Stuart123" & return    end tell
	end tell
EOF

echo 'Complete Execution'