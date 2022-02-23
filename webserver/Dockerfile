FROM centosbase:1.0

COPY entrypoint.sh /home/user/entrypoint.sh

RUN chmod 711 /home/user/entrypoint.sh         && \
    chown user:apache /home/user/entrypoint.sh 

RUN yum -y --setopt=tsflags=nodocs install sudo \
    iptables-services

COPY iptables.sh /home/user/iptables.sh

RUN chmod +x /home/user/iptables.sh && \
    chmod go-w /home/user/iptables.sh && \
    chmod +s /home/user/iptables.sh && \ 
    echo "ALL ALL=NOPASSWD: /home/user/iptables.sh" >> /etc/sudoers

USER user

ENTRYPOINT ["/home/user/entrypoint.sh"]
