#!/bin/bash

set -vx

INP=$1

if [ -z "$INP" ]
then 
    INP="192.168.0.2"
fi

sed -i "s/XXX/$INP/g" /home/user/iptables.sh
sudo /home/user/iptables.sh
#rm /home/user/iptables.sh

httpd

cat /etc/hostname > /var/www/html/index.html

while true; do sleep 1m; echo "waiting"; done
