#! /bin/bash
#Named the document

#Creating Welcome Note
whiptail --title "Electro Code" --msgbox " Electro Code:  An Integrity Of Software And Hardware \n\n Welcome to my user friendly API" 10 70 --ok-button "Okay"
#Creating a question page in if condition
if(whiptail --title "Electro Code" --yesno "Would you like to continue?" 10 70 --yes-button "Yeah, sure" --no-button "Nope")
then
	whiptail --title "Electro Code" --msgbox " Happy to see you here! \n Thanks for continue with us. :)" --ok-button "Done" 10 70
# Creating About page
	whiptail --title "About API" --msgbox " Hola Guys, \n This program is for controlling some power command in which we \n could control the following program :-->" 10 70 --ok-button "Next"
	whiptail --title "About API" --msgbox " 1. Power Off \n 2. Restart \n 3. Sleep \n 4. Lock Screen \n\n Note: Next time press alt + q only" 12 70 --ok-button "Okay"
# Creating program menu
: '	program=$(whiptail --title "Program Menu" --menu "Choose an option to proceed" 15 70 5 \
	"1." "Power Off" \
	"2." "Restart" \
	"3." "Sleep" \
	"4." "Lock Screen" 3>&1 1>&2 2>&1)
'	exitstatus=$?
	if [[ $exitstatus -eq 0 ]]
	then
		gnome-terminal -e "bash -c '/home/sanjaykv02/./power.sh; sleep 1'"
		exit
	else
		echo "there was an error"
	fi
fi
