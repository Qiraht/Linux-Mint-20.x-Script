#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#

sudo apt install git -y

# Setting up git
clear
echo -n "Setting up your git"
echo -n "Insert your username  "
read name
git config --global user.name "$name"
echo -n "Insert your email "
read email
git config --global user.email "$email"

clear
echo "Git username and email hasbeen set"
