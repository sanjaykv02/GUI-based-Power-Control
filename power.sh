#!/bin/bash

echo -e " Choose an option:--> \n 1. Power Off \n 2. Restart \n 3. Sleep\n 4. Lock Screen"

read input

case $input in
	
	"power off" | "poweroff" | "1" | "1." | "Power off" | "Power Off" | "turn off" ) 
		poweroff;;
	
	"restart" | "Restart" | "2" | "2." | "reboot" )
		reboot;;
	
	"3." |	"3" | "Sleep" | "sleep" | "suspend" )
		systemctl suspend;;
	
	"4." | "4" | "lock" | "lockscreen" | "Lock" | "lock screen" | "Lock screen" | "Lock Screen"  )
		gnome-screensaver-command -l;;
esac
