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
    tlp-rdw
    tlpui
    lutris
    evolution
    filelight
    gparted
    qbittorrent
    apt-transport-https
    apt-xapian-index
    libavcodec-extra
    codium
    golang
    libvulkan1
    libvulkan1:i386
    libvulkan1
    libvulkan1:i386
    libgnutls30:i386
    libldap-2.4-2:i386
    libgpg-error0:i386
    libxml2:i386
    libasound2-plugins:i386
    libsdl2-2.0-0:i386
    libfreetype6:i386
    libdbus-1-3:i386
    libsqlite3-0:i386
)

for app in ${ProgramI[@]}
    do
        sudo apt install "$app" -y
done

sudo apt install --install-recommends winehq-staging wine-staging wine-staging-i386 wine-staging-amd64 -y

sudo apt install -f -y
sudo apt autoremove -y
sudo apt autoclean -y

clear
echo "Done :D"
