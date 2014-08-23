FROM usekite/ubuntu

# RUNNING
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/code", "/etc/nginx/sites-available"]

EXPOSE 8000

CMD ["/bin/bash", "/start.sh"]
