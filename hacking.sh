#!/usr/bin/env bash

{
CHOICE=$(
whiptail --title "Operative Systems" --menu "Make your choice" 16 100 9 \
	"1)" "PI-pico-lib"   \
	"2)" ""  \
	"3)" "Passwort" \
	"4)" "Number of processes and threads" \
	"5)" "Debugging" \
	"6)" "Userinfo" \
	"7)" "Hacking tools" \
	"8)" "uninstall" \
	"9)" "End script"  3>&2 2>&1 1>&3	
)


case $CHOICE in
	"1)")   
		sudo apt install git 
        chmod u+x pico.sh
        ./pico.sh
	;;
	"2)")   
	   chmod u+x upt.sh
	   ./upt.sh	  
	;;

	"3)")   
	    rm pass_out.txt
		python3  password.py
	    chmod u+x pass_show.sh
	    ./pass_show.sh
        ;;

	"4)")   
		chmod u+x pros.sh
		./pros.sh
        ;;

	"5)")   
        chmod u+x Debugging.sh
		./Debugging.sh
        ;;

	"6)")   
		chmod u+x userinfo.sh
		./userinfo.sh
        ;;

	"7)")
		chmod u+x hacking.sh
		./hacking.sh
		;;

	"8)")
		chmod u+x uninstall.sh
		./uninstall.sh
		;;
	"9)") exit
        ;;
esac
./menu.sh
}