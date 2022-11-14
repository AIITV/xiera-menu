#!/usr/bin/env bash

name=$(whoami)

cd
cd /home/"$name"/xiera-menu/byob/web-gui 

chmod u+x Debugging.sh
./Debugging.sh

sudo apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://get.docker.com -o get-docker.sh -y
DRY_RUN=1 sh ./get-docker.sh
curl -fsSL https://get.docker.com -o get-docker.sh -y
sudo sh get-docker.sh

python3 run.py



