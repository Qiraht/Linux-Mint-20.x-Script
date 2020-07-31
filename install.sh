#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# This script is used to install all the script
# Use it with your own risk

sudo apt install git -y

git clone https://github.com/Qiraht/Linux-Mint-20.x-Script.git

Path="$HOME/Linux-Mint-20.x-Script"

bash $Path/gitconf.sh
bash $Path/repo.sh
bash $Path/apps.sh
bash $Path/scanner.sh
bash $Path/xdm.sh