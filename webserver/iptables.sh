#!/bin/sh
iptables -N ext 
iptables -A ext --src 192.168.0.100 -j ACCEPT  
iptables -A ext -j DROP
iptables -I INPUT -m tcp -p tcp --dport 80 -j ext
