#!/usr/bin/env bash

#this is not rlly a debugging tool, but more like a check that everything is installed
name=$(whoami)

apt update -y
apt update -y

apt-get install -y sudo

sudo apt update -y && sudo apt upgrade -y
sudo apt install whiptail -y
sudo apt install curl -y
sudo apt install git -y
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

cd /home/"$name"/xiera-menu
