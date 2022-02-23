FROM centos:7

RUN  yum -y --setopt=tsflags=nodocs update            && \
     yum -y --setopt=tsflags=nodocs install net-tools    \
     httpd                                            && \
     yum clean all 

RUN useradd -ms /bin/bash -G apache user

RUN setcap 'cap_net_bind_service=+epi' /usr/sbin/httpd && \
    chown -R user:apache /etc/httpd/logs/              && \
    chown -R user:apache /run/httpd                    && \
    chown -R user:apache /var/www/html/

CMD /usr/sbin/httpd 
