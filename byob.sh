#!/usr/bin/env bash

name=$(whoami)

whiptail --title "CONFIRMATION" --yesno "Have you already installed BYOB?" 8 78 
if [[ $? -eq 0 ]]; then 
      whiptail --title "CONFIRMATION" --yesno "Do you want to start byob?" 8 78 
      if [[ $? -eq 0 ]]; then 
        whiptail --title "BYOB" --msgbox "Click <Continue> to start" 8 78 
        chmod u+x byob_run.sh
        ./byob_run.sh 
      elif [[ $? -eq 1 ]]; then 
        whiptail --title "MESSAGE" --msgbox "Cancelling Process" 8 78 
      elif [[ $? -eq 255 ]]; then 
        whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
      fi
elif [[ $? -eq 1 ]]; then 
  sleep 5
elif [[ $? -eq 255 ]]; then 
  whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
fi 


whiptail --title "CONFIRMATION" --yesno "DO you want to install BYOB?" 8 78 
if [[ $? -eq 0 ]]; then 
  sleep 1
elif [[ $? -eq 1 ]]; then 
  whiptail --title "MESSAGE" --msgbox "Cancelling Process" 8 78 
elif [[ $? -eq 255 ]]; then 
  whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
fi 

apt update -y && apt upgrade -y
apt install sudo -y
sudo apt update -y && sudo apt upgrade -y

sudo apt install git -y
sudo apt install curl -y

#made my own git cuz of the error that is in line 90

cd /home"$name"xiera-menu

git clone https://github.com/malwaredllc/byob
git clone https://github.com/FforFixed/server.py.git

cd /home"$name"
cd /home"$name"xiera-menu/byob/web-gui/
rm startup.sh
cd /home"$name"
cd /home"$name"xiera-menu/server.py/
cp startup.sh /home"$name"xiera-menu/byob/web-gui/

#thats the convinience script

sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://get.docker.com -o get-docker.sh -y
DRY_RUN=1 sh ./get-docker.sh

sudo apt install python3 -y
sudo apt install python3-pip -y
pip install flask
pip install flask_session
pip install flask_wtf
pip install Flask_SQLAlchemy
pip install Flask_Login
pip install Flask_Bcrypt
pip install flask_mail
pip install wtforms



whiptail --title "FINAL CONFERMATION" --msgbox "the installing script will run now, pls dont cancel that script. It takes between 15-1h, depending on your pc." 8 78

cd /home"$name"
cd /home"$name"xiera-menu/byob/web-gui/
chmod u+x startup.sh
./startup.sh

whiptail --title "CONFIRMATION" --yesno "Do you want to start byob?" 8 78 
if [[ $? -eq 0 ]]; then 
  whiptail --title "BYOB" --msgbox "Click <Continue> to start" 8 78 
  chmod u+x byob_run.sh
  ./byob_run.sh 
elif [[ $? -eq 1 ]]; then 
  whiptail --title "MESSAGE" --msgbox "Cancelling Process" 8 78 
elif [[ $? -eq 255 ]]; then 
  whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
fi
