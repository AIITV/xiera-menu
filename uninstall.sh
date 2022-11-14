#!usr/bin/env bash

name=$(whoami)

whiptail --title "CONFIRMATION" --yesno "Do you want to start byob?" 8 78 
if [[ $? -eq 0 ]]; then 
  sleep 1
elif [[ $? -eq 1 ]]; then 
  whiptail --title "MESSAGE" --msgbox "Cancelling Process" 8 78 
elif [[ $? -eq 255 ]]; then 
  whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
fi

sudo apt-get remove whiptail -y
sudo apt remove whiptail -y

cd 

rm -r xiera-menu







