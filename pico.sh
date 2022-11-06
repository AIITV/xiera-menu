#!/usr/bin/env bash

name=$(whoami)
dir=$(pwd)

git clone https://github.com/AIITV/pi-pico-lib.git

whiptail --title "Finished" --msgbox "Everything has been downlaoded. you can find it under "$dir"/pi-pico-lib 8 78 
