#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# Script used to install 
# Google Chrome on
# Linux Mint 20
# Since there is no Chromium for now

Directory="$HOME/Downloads/Programs"

if [ -d "$Directory" ] 
then
    echo -e "Directory exists.\nSkipping to the next stage" 
else
    echo -e "Directory does not exists. \nCreating a new one"
    mkdir "$Directory"
fi

# Download driver
wget -c "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -P "$Directory"

sudo dpkg -i $Directory/*.deb

# Install extra dependency
sudo apt install -f -y
