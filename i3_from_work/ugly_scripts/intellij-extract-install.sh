#!/usr/bin/env bash

if [[ ! -f $1  ]]; then
    echo Please provide tar archive
    exit 1
fi

opt=/opt/

dir_name=`tar -tf $1 | head -1 | cut -f1 -d"/"`

exit_code=`sudo tar -xf $1 -C ${opt}`

if [[ -n $dir_name && -d "$opt/${dir_name}" ]]; then
    echo Success extracting
else
    echo Error extracting
    exit 1
fi

user=`id -un`
group=`id -gn`

sudo chown -R $user:$group $opt/$dir_name

bin_dir=$opt/$dir_name/bin

if [[ ! -d $bin_dir ]]; then
    echo Error idk
fi

cd $bin_dir
