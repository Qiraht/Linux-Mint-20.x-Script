#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# Script to install XDM
# On Ubuntu based distro

Directory="$HOME/Downloads/Programs"

if [ -d "$Directory" ] 
then
    echo "Directory exists." 
else
    echo -e "Directory does not exists. \nCreating a new one"
    mkdir "$Directory"
fi

wget -c "https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz" -P "$Directory"


tar -C $Directory -xf xdm-setup-7.2.11.tar.xz

sudo bash $Directory/install.sh
