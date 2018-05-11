# editor
sudo apt install neovim
sudo update-alternatives --config editor

# fix datetime Windows/Unix clash
timedatectl set-local-rtc 1

#git
sudo apt install git meld -y
git config --global credential.helper "cache --timeout=3600"
git config --global user.name "Radosław Cymer"
git config --global user.email cymerrad@gmail.com

