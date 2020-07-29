#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#




# check if apt-get is installed
if which apt-get > /dev/null; then
		sudo apt-get install -y git
fi

# check if pacman is installed
if which pacman > /dev/null; then
	sudo pacman -S --noconfirm git
fi


# Setting up git

git init
git config --global user.name "Thariq Aulia Akbar"
git config --global user.email "thariq2712@gmail.com"
