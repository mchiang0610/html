FROM usekite/ubuntu

# RUNNING
ADD ./configs/default /etc/nginx/sites-available/default
ADD ./configs/supervisord.conf /etc/supervisord.conf
RUN mkdir /var/log/supervisor/
RUN mkdir /var/run/sshd
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

# SHELL DISPLAY
ADD motd /etc/

# BASHRC
ADD bashrc /.bashrc

# ADD CODE
ADD app /app

EXPOSE 8000
EXPOSE 22

CMD ["/bin/bash", "/start.sh"]
