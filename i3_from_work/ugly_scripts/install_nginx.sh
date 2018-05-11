#!/usr/bin/env bash

apt-get install nginx
echo "jumpnginx(){ echo 'systemctl [stop|start|restart|reload] nginx'; cd /var/www/html/; }" >> ~/.bashrc

. ~/.bashrc
