#!/usr/bin/env bash

lxterm -e "for i in 4 3 2 1; do echo \$i; sleep 1; done; \
    echo CHUJ; \
    scrot -u '%Y-%m-%d_%H%M%S.png' -e 'mv \$f ~/Pictures';"


