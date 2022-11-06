#!/usr/bin/env bash

sudo apt install whiptail -y

CHOICES=$(whiptail --separate-output --checklist "Choose the pakages that should be installed." 10 35 5 \
  "1" "pi-pico lib" ON \
  "2" "WiFi tools" OFF \
  "3" "Password cracking" OFF \
  "4" "information gathering" OFF 3>&1 1>&2 2>&3)

if [ -z "$CHOICE" ]; then
  echo "No option was selected (user hit Cancel or unselected all options)"
else
  for CHOICE in $CHOICES; do
    case "$CHOICE" in
    "1")
      chmod u+x pico.sh
      ./pico.sh
      ;;
    "2")
      sudo apt install wifite
      sudo apt install aircrack-ng -y
      sudo apt -y install reaver
      sudo apt install wireshark -y
      ;;
    "3")
      sudo apt install john -y
      sudo apt install aircrack-ng -y
      sudo apt install hashcat -y
      ;;
    "4")
      sudo apt install netcat -y
      sudo apt install nmap -y
      ;;
    *)
      echo "Unsupported item $CHOICE!" >&2
      exit 1
      ;;
    esac
  done
fi