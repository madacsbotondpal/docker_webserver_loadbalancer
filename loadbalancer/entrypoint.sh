#!/bin/bash

INP=$*

if [ -z "$INP" ]
then
    INP="webserver-1"
fi

#set -vx
echo '<proxy balancer://appset>                        ' >> /etc/httpd/conf.d/proxy.conf 

for serv in $INP
do
    echo "        BalancerMember http://$serv          " >> /etc/httpd/conf.d/proxy.conf 
done
echo '        ProxySet lbmethod=bytraffic              ' >> /etc/httpd/conf.d/proxy.conf 
echo '</proxy>                                         ' >> /etc/httpd/conf.d/proxy.conf 
echo 'ProxyPass "/" "balancer://appset/"               ' >> /etc/httpd/conf.d/proxy.conf 
echo 'ProxyPassReverse "/" "balancer://appset/"        ' >> /etc/httpd/conf.d/proxy.conf

httpd

while true; do sleep 1m; echo "waiting"; done 
