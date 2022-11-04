#!/usr/bin/env bash

{
CHOICE=$(
whiptail --title "Operative Systems" --menu "Make your choice" 16 100 9 \
	"1)" "BYOB"   \
	"2)" "SSH-server start"  \
	"3)" "SSH-server stop" \
	"4)" "SSH-server restart" \
	"5)" "htop" \
	"6)" "Phoeninfoga" \
	"9)" "End script"  3>&2 2>&1 1>&3	
)



case $CHOICE in
	"1)")   
		chmod u+x byob.sh
		./byob.sh
	;;
	"2)")   
	   sudo systemctl start ssh	  
	;;

	"3)")   
	    sudo systemctl stop ssh
        ;;

	"4)")   
	    sudo systemctl restart ssh
        ;;

	"5)")   
        chmod og-rwx somepackage
		htop
        ;;

	"6)")   
		chmod u+x phoneinfoga_run.sh
		./Phoeninfoga_run.sh
        ;;

	"9)") exit
        ;;
esac
whiptail --msgbox "Done" 20 78
exit 
}