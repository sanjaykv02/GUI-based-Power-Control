# GUI-based-Power-Control

## Table of Contents
* [Table of contents](#table-of-contents) 
* [Domenstration](#domenstration) 
* [Code](#code) 
* [Keyboard Shortcut](#keyboard-shortcut)
* [Reference Link](#reference-link)

## Domenstration

### Home Page
![Home Page](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/Home%20Page.png)
### Permission Page
![Permission Page](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/Permission%20Page.png)
### Message Page
![Message Box](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/Message%20Box.png)
### About Page
![About API](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/About%20Page1.png)

![About API](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/About%20Page2.png)

### Command Page
![Command](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/Command%20Page.png)

### Keyboard Shortcut

![shortcut 1](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/open%20settings.png)

![shortcut 2](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/click%20on%20keyboard.png)

![shortcut 3](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/click%20on%20plus%20sign.png)

![shortcut 4](https://github.com/sanjaykv02/GUI-based-Power-Control/blob/master/command%20section.png)

## Code

  __File name__    `power.sh`
  
    #!/bin/bash
    
    echo -e " Choose an option:--> \n 1. Power Off \n 2. Restart \n 3. Sleep\n 4. Lock Screen"
    #echo will display the quoted message and '\n' is an escape character which returns the new line 
    
    read input
    #read will take the data from terminal and store into input variable
    
    case $input in
	    "power off" | "poweroff" | "1" | "1." | "Power off" | "Power Off" | "turn off" ) 
		    poweroff;;
        #this command will shutdown the pc
        
	    "restart" | "Restart" | "2" | "2." | "reboot" )
		    reboot;;
        #this command will restart the pc
        
	    "3." |	"3" | "Sleep" | "sleep" | "suspend" )
		    systemctl suspend;;
        #this command will tend the pc to get in sleep mode
        
	    "4." | "4" | "lock" | "lockscreen" | "Lock" | "lock screen" | "Lock screen" | "Lock Screen"  )
		    gnome-screensaver-command -l;;
        #this command will lock the screen
        
    esac
    # case statement is a decision making statement in which variable can be compared to data in lesser amount of line than the if..elif..else statement
  ---
  __File Name__ `power_gui.sh`
  
      #! /bin/bash
      #Named the document
      
      #Creating Home Page
      whiptail --title "Electro Code" --msgbox " Electro Code:  An Integrity Of Software And Hardware \n\n Welcome to my user friendly API" 10 70 --ok-button "Okay"
      
      #Creating a Permission Page in if condition
      if(whiptail --title "Electro Code" --yesno "Would you like to continue?" 10 70 --yes-button "Yeah, sure" --no-button "Nope")
      then
        #This is a message box
	      whiptail --title "Electro Code" --msgbox " Happy to see you here! \n Thanks for continue with us. :)" --ok-button "Done" 10 70
      
      #Creating About page
	      whiptail --title "About API" --msgbox " Hola Guys, \n This program is for controlling some power command in which we \n could control the following program :-->" 10 70 --ok-button "Next"
	      whiptail --title "About API" --msgbox " 1. Power Off \n 2. Restart \n 3. Sleep \n 4. Lock Screen \n\n Note: Next time press alt + q only" 12 70 --ok-button "Okay"
      
      # Creating program menu
      : ' This menubar is under development	
      program=$(whiptail --title "Program Menu" --menu "Choose an option to proceed" 15 70 5 \
	      "1." "Power Off" \
	      "2." "Restart" \
	      "3." "Sleep" \
	      "4." "Lock Screen" 3>&1 1>&2 2>&1)
      '
      #Configuring the terminal process whether command executed or not
      exitstatus=$?
	      if [[ $exitstatus -eq 0 ]]
	      then
          #Linking this power_gui.sh script with power.sh script 
		      gnome-terminal -e "bash -c '/path/to/script/./power.sh; sleep 1'"
		      
	      else
		      echo "there was an error"
          
	      fi
      fi
      
 
 To run the code type following command:--
 
 	/path/to/script/.power_gui.sh
 
 ## Keyboard Shortcut
 
Go through the files listed above and copy paste the code give below

	`gnome-terminal -e "bash -c '/path/to/script/./power_gui.sh'; sleep .3"`

now set the shortkey of your choice

	`gnome-terminal -e "bash -c '/path/to/script/./power.sh'; sleep .3"`

set shortcut as `alt` `q`


 ## Reference Link
 
 >Check Linkedin [Here](https://www.linkedin.com/posts/sanjay-varyani_bash-linux-whiptail-activity-6948268862568046592-ZJEL?utm_source=linkedin_share&utm_medium=member_desktop_web) !    <br>
 >Check Wikipedia [Here](https://en.wikibooks.org/wiki/Bash_Shell_Scripting/Whiptail) !

_**Thanks for reading  :)**_
