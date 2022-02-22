FROM centosbase:1.0

COPY entrypoint.sh /home/user/entrypoint.sh

RUN touch /etc/httpd/conf.d/proxy.conf         && \
    chown user:apache /etc/httpd/conf.d/proxy.conf && \ 
    chmod 711 /home/user/entrypoint.sh         && \
    chown user:apache /home/user/entrypoint.sh

USER user

ENTRYPOINT ["/home/user/entrypoint.sh"]
