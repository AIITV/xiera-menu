#!/usr/bin/env bash

apt-get install -y sudo
sudo apt install whiptail -y

{
CHOICE=$(
whiptail --title "Operative Systems" --menu "Make your choice" 16 100 9 \
	"1)" "App"   \
	"2)" "Update"  \
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
		chmod u+x App.sh
		./App.sh
		./menu.sh
	;;
	"2)")   
	   chmod u+x upt.sh
	   ./upt.sh	
	   ./menu.sh  
	;;

	"3)")   
	    rm pass_out.txt
		python3  password.py
	    chmod u+x pass_show.sh
	    ./pass_show.sh
		./menu.sh
        ;;

	"4)")   
		chmod u+x pros.sh
		./pros.sh
		./menu.sh
        ;;

	"5)")   
        chmod u+x Debugging.sh
		./Debugging.sh
		./menu.sh
        ;;

	"6)")   
		chmod u+x userinfo.sh
		./userinfo.sh
		./menu.sh
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