#!/bin/bash

#disable touchpad
gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse

#git
sudo apt install git meld -y
git config --global credential.helper cache
git config --global --add user.name "Radosław Cymer"
git config --global --add user.email cymerrad@gmail.com

# disable desktop in switcher
sudo apt-get install compizconfig-settings-manager

#random
sudo apt install wmctrl

#VIM
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py
cd ~
