#!/usr/bin/env bash

# this is in case we are running in sudo
dirname=$(realpath $0)
dirname=$(echo $dirname | cut -f 1-3 -d'/')
log_location=$dirname/apt_installed.log

if [ $1 = install ]; then

	# TODO if success then log...

	if [ ! -e $log_location ]; then
		touch $log_location;
	fi

	for field in $@; do
		if [ ! $field = install ] && [ ! $field = '-y' ]; then
			echo $field >> $log_location;
		fi
	done
	apt $@;
else
	apt $@;
fi
