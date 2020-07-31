#!/bin/bash
#
# Author : Thariq Aulia Akbar
# Github : github.com/Qiraht
#

# Setting up git
clear
echo -e "Setting up git \nInsert your username "
read name
git config --global user.name "$name"
echo "Insert your email "
read email
git config --global user.email "$email"

clear
echo "Git username and email has been set"
