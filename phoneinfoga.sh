#!/usr/bin/env bash

whiptail --title "CONFIRMATION" --yesno "Do you want to install PHONEINFOGA?" 8 78 
if [[ $? -eq 0 ]]; then 
  sleep 1 
elif [[ $? -eq 1 ]]; then 
  whiptail --title "MESSAGE" --msgbox "Cancelling Process since user pressed <NO>." 8 78 
elif [[ $? -eq 255 ]]; then 
  whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
fi 

#https://github.com/sundowndev/PhoneInfoga

echo "updateing"

sleep 2

apt update -y
apt upgrade -y

apt install sudo

sudo apt update -y
sudo apt upgrade -y

echo "done"

echo "installing PHONEINFOGA"
sudo apt install curl -y

sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://get.docker.com -o get-docker.sh -y
DRY_RUN=1 sh ./get-docker.sh
curl -fsSL https://get.docker.com -o get-docker.sh -y
sudo sh get-docker.sh

echo "pulling from docker"

docker pull sundowndev/phoneinfoga:latest



whiptail --title "CONFIRMATION" --yesno "Do you want to run PHONEINFOGA?" 8 78 
if [[ $? -eq 0 ]]; then 
  chmod u+x phoneinfoga_run.sh
  ./phoneinfoga_run.sh
elif [[ $? -eq 1 ]]; then 
  whiptail --title "MESSAGE" --msgbox "Cancelling Process since user pressed <NO>." 8 78 
elif [[ $? -eq 255 ]]; then 
  whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
fi 















