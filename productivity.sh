# editor
echo 'Go there: https://code.visualstudio.com/docs/?dv=linux64_deb'

# guake
sudo apt install -y guake
echo "TODO: add to autostart + manual GUI configuration"

# directories
mkdir -p ~/Documents/shell/include

# my own tools (assuming git is present)
git clone https://github.com/cymerrad/pick-path ~/Documents/shell/include/pick-path
