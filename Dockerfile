FROM scratch

MAINTAINER kmashiko

ADD amzn-container-minimal-2017.03.0.20170401-x86_64.tar.xz /
CMD ["/bin/bash"]


FROM nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD fastcgi.conf /etc/nginx/fastcgi.conf
ADD server.conf /etc/nginx/conf.d/default.conf
ADD localhost.key /etc/ssl/private/localhost.key
ADD localhost.crt /etc/ssl/certs/localhost.crt