FROM usekite/ubuntu

# RUNNING
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

VOLUME ["/code", "/etc/nginx/sites-available"]

EXPOSE 8000
EXPOSE 22

CMD ["/bin/bash", "/start.sh"]
