#!/usr/bin/env bash

set -e

echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial main restricted universe multiverse' | sudo tee -a /etc/apt/sources.list
echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-updates main restricted universe multiverse' | sudo tee -a /etc/apt/sources.list
echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-backports main restricted universe multiverse' | sudo tee -a /etc/apt/sources.list
echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-security main restricted universe multiverse' | sudo tee -a /etc/apt/sources.list
sudo apt-get update

sudo apt-get install zsh git build-essential python-software-properties vim-gtk compton alsa-utils pulseaudio xinit software-properties-common wicd-curses scrot imagemagick -y
sudo add-apt-repository ppa:webupd8team/java -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update
sudo apt-get install oracle-java8-installer google-chrome-stable i3 -y
