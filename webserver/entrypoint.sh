#!/bin/bash

#set -vx
sudo /home/user/iptables.sh
rm /home/user/iptables.sh

httpd

cat /etc/hostname > /var/www/html/index.html

while true; do sleep 1m; echo "waiting"; done
