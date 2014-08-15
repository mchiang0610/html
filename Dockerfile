FROM usekite/ubuntu

# RUNNING
RUN mkdir /var/run/sshd
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

# SHELL DISPLAY
ADD motd /etc/

# BASHRC
ADD bashrc /.bashrc

VOLUME ["/code", "/etc/nginx/sites-available"]

EXPOSE 8000
EXPOSE 22

CMD ["/bin/bash", "/start.sh"]
