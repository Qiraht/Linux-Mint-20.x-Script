#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# Add Useful Repository

sudo dpkg --add-architecture i386 

# Add Repository key
# Key Download URL
Keys=(
    https://dl.winehq.org/wine-builds/winehq.key
    https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
)

# Downloading Key
for url in ${Keys[@]}
    do wget -nc "$url"
done

#Adding Key
sudo apt-key add *.key
sudo apt-key add *.gpg

# Add Repository
# Repository list
PPA=(
    ppa:graphics-drivers/ppa
    ppa:qbittorrent-team/qbittorrent-stable
    ppa:libreoffice/ppa
    ppa:obsproject/obs-studio
    ppa:inkscape.dev/stable
    ppa:graphics-drivers/ppa
    ppa:linuxuprising/apps
    ppa:lutris-team/lutris
    ppa:saiarcot895/chromium-beta
)

# Adding Repository
for repo in ${PPA[@]}
    do sudo add-apt-repository "$repo" -y
done
echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y

sudo apt update -y


clear
echo "New PPA Repository has been added"