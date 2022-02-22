#!/bin/bash

set -vx



echo '<proxy balancer://appset>                        ' >> /etc/httpd/conf.d/proxy.conf 
echo '        BalancerMember http://webserver-1        ' >> /etc/httpd/conf.d/proxy.conf 
echo '        ProxySet lbmethod=bytraffic              ' >> /etc/httpd/conf.d/proxy.conf 
echo '</proxy>                                         ' >> /etc/httpd/conf.d/proxy.conf 
echo 'ProxyPass "/" "balancer://appset/"               ' >> /etc/httpd/conf.d/proxy.conf 
echo 'ProxyPassReverse "/" "balancer://appset/"        ' >> /etc/httpd/conf.d/proxy.conf

httpd

while true; do sleep 1m; echo "waiting"; done 
