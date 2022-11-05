#!/usr/bin/env bash

rm out.txt

usrname=$(whoami)
time=$(uptime | awk '{print $3;}')
ram=$(grep MemTotal /proc/meminfo)

echo "
Username: $usrname 
RAM: $ram 
Time since last reboot: $time" > out.txt

whiptail --textbox --scrolltext out.txt 10 80