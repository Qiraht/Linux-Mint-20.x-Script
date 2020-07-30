#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# Script used to install 
# Epson L210 All-In-One Scanner Driver
# Used on Linux Mint 20
# Can be used on any Debian/Ubuntu based distro

Directory="$HOME/Downloads/Programs"

if [ -d "$Directory" ] 
then
    echo -e "Directory exists.\nSkipping to the next stage" 
else
    echo -e "Directory does not exists. \nCreating a new one"
    mkdir "$Directory"
fi

# Download driver
wget -c "https://download2.ebz.epson.net/iscan/general/deb/x64/iscan-bundle-2.30.4.x64.deb.tar.gz" -p "$Directory"

tar -C $Directory -xf iscan-bundle-2.30.4.x64.deb.tar.gz

Path="$Directory/iscan-bundle-2.30.4.x64.deb"

sudo dpkg -i $Path/data/*.deb
sudo dpkg -i $Path/core/*.deb
sudo dpkg -i $Path/plugins/*.deb

# Install extra dependency
sudo apt install -f -y