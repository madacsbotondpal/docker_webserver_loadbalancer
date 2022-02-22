#!/bin/sh

set -vx

iptables -N ext 
iptables -A ext --src XXX -j ACCEPT  
iptables -A ext -j DROP
iptables -I INPUT -m tcp -p tcp --dport 80 -j ext
