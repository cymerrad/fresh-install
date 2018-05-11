FILES=()
DIRS=()
DOTTABLE=()
DIRS[0]=$HOME/; FILES[0]=.bashrc; DOTTABLE[0]=true;
DIRS[1]=$HOME/.i3/; FILES[1]=config; DOTTABLE[1]=false;
DIRS[2]=/etc/;  FILES[2]=i3status.conf; DOTTABLE[2]=false;
DIRS[3]=$HOME/; FILES[3]=.profile; DOTTABLE[3]=true;
DIRS[4]=$HOME/; FILES[4]=.bash_aliases; DOTTABLE[4]=false;


_arr_len=${#FILES[@]}
for i in $(seq 0 $(( ${_arr_len} - 1 ))); do
    cp -v ${FILES[$i]} ${DIRS[$i]}${FILES[$i]};
    if ${DOTTABLE[$i]}; then
        . ${DIRS[$i]}${FILES[$i]}
    fi
done
