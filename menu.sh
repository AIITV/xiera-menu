#!/usr/bin/env bash

#cleaning data

sudo apt install whiptail

{
CHOICE=$(
whiptail --title "Operative Systems" --menu "Make your choice" 16 100 9 \
	"1)" "App"   \
	"2)" "Update"  \
	"3)" "Passwort" \
	"4)" "Number of processes and threads" \
	"5)" "Debugging" \
	"6)" "Userinfo" \
	"9)" "End script"  3>&2 2>&1 1>&3	
)


case $CHOICE in
	"1)")   
		chmod u+x App.sh
		./App.sh
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

	"9)") exit
        ;;
esac
./menu.sh
}