FILES=()
FILES[0]=$HOME/.bashrc
FILES[1]=$HOME/.i3/config
FILES[2]=/etc/i3status.conf
FILES[3]=$HOME/.profile
FILES[4]=$HOME/.bash_aliases

for file_name in "${FILES[@]}"
do
    cp -f ${file_name} .
done
