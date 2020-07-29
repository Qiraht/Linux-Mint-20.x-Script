#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# Script used for my configuration
# Will be used For Linux Mint 20
# Can be used in any ubuntu based linux distro
# with some adaptation to its distro
# 
# Created By Thariq Aulia Akbar
# github.com/Qiraht

# Install Mint Grub Theme
sudo apt install --reinstall -o Dpkg::Options::="--force-confmiss" grub2-theme-mint -y

# Removing program
ProgramR=(
    pidgin
    hexchat
    thunderbird
)

for var in ${ProgramR[@]}
    do sudo apt remove "$name" -y
done

# List Program Installed
ProgramI=(
    tlp
    tlpui
    lutris
    evolution
    filelight
    gparted
    qbittorent
    xz-utils
)

for app in ${ProgramI[@]}
    do
        sudo apt install "$name" -y
done

sudo apt install --install-recommends winehq-devel

sudo apt install -f -y
sudo apt autoremove -y
sudo apt autoclean -y

clear
echo "Done :D"