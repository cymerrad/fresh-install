#!/usr/bin/env bash

# Alright, so this is how Spotify behaves (at least with i3 WM):
# There are two windows in reality, one always has a name "spotify",
# the other changes its name from "Spotify" to "(whatever is currently played)".
# We should avoid sending anything to the former one, 'cause reasons.

function send_keys() {
    # --class or --name doesn't work properly
    for wid in $(xdotool search spotify 2>/dev/null); do 
        # xdotool notifies about an error but still returns 0...
        ERROR='';
        ERROR=$(xdotool windowactivate $wid 2>&1); 

        # latest addition to make sure that... idk
        fishy=$(xdotool getwindowname $wid)
        if [ ! "$fishy" = "spotify" ]; then 

            if [ -z "$ERROR" ]; then
                echo $(xdotool getwindowname $wid);
                sleep 1
                xdotool key --delay 300 $@;
            fi

        fi
    done
}

send_keys $@
