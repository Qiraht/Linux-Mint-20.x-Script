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
    hexchat
    thunderbird
    gnote
)

for var in ${ProgramR[@]}
    do sudo apt remove "$var" -y
done

# List Program Installed
ProgramI=(
    tlp
    tlpui
    wine-devel
    lutris
    evolution
    filelight
    gparted
    qbittorent
    apt-transport-https
    apt-xapian-index
    libavcodec-extra
    codium
)

for app in ${ProgramI[@]}
    do
        sudo apt install "$app" -y
done

sudo apt install -f -y
sudo apt autoremove -y
sudo apt autoclean -y

clear
echo "Done :D"