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

wget -c "https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz" -p "$Directory"

Path="$Directory/xdm-setup-7.2.11/"

mkdir $Path

tar -C $Path -xf xdm-setup-7.2.11.tar.xz

sudo bash $Path/install.sh
