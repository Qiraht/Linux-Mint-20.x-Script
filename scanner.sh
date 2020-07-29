#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# Script used to install 
# Epson L210 All-In-One Scanner Driver
# Used on Linux Mint 20
# Can be used on any Debian/Ubuntu based distro

Directory="$HOME/Download/Programs"

mkdir "$Directory"

# Download driver
wget -c "https://download2.ebz.epson.net/iscan/general/deb/x64/iscan-bundle-2.30.4.x64.deb.tar.gz" -p "$Directory"

tar -C $Directory -zxvf iscan-bundle-2.30.4.x64.deb.tar.gz

sudo dpkg -i $Directory/iscan-bundle-2.30.4.x64.deb/data *.deb
sudo dpkg -i $Directory/iscan-bundle-2.30.4.x64.deb/core *.deb
sudo dpkg -i $Directory/iscan-bundle-2.30.4.x64.deb/plugin *.deb

# Install extra dependency
sudo apt install -f