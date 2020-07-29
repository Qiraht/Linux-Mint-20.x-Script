#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#
# Script to install XDM
# On Ubuntu based distro

Directory="$HOME/Download/Programs"

mkdir "$Directory"

wget -c "https://github.com/subhra74/xdm/releases/download/7.2.11/xdm-setup-7.2.11.tar.xz" -p "$Directory"

tar -C $Directory -zxvf xdm-setup-7.2.11.tar.xz

Path="$Directory/xdm-setup-7.2.11/install.sh"

chmod 777 $Path

sudo bash $Path
