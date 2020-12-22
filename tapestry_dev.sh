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
# delay 10

tell application "Safari"

	activate

	#open location "https://development.stuartweitzman.com"

	#delay 2


	tell application "System Events" to tell process "Safari"	 		keystroke "," using command down
        	set frontmost to true
        	tell window 1
            		click button "Advanced" of toolbar 1
            		delay 2
            		set theCheckbox to checkbox 4 of group 1 of group 1 of it
            		tell theCheckbox
                		if not (its value as boolean) then click theCheckbox
            		end tell
            		delay 2
            		keystroke "w" using command down
            		delay 2
        	end tell
        	tell menu bar item "Develop" of menu bar 1
            	click
            	delay 2
            	click menu item "Allow Remote Automation" of menu 1
            	delay 2
        	end tell
	end tell	
	open location "https://development.stuartweitzman.com"
	delay 2
	tell application "System Events" to tell process "Safari"	
	--	keystroke tab		keystroke "storefront" & tab & "Stuart123" & return	end tell
	end tell
EOF

echo 'Complete Execution'