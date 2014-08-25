FROM usekite/ubuntu

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/code", "/etc/nginx/sites-available"]

EXPOSE 8000

CMD ["/usr/sbin/nginx"]
