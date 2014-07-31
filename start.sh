adduser --disabled-password --gecos "" kite; usermod -a -G sudo kite
echo "kite	ALL=NOPASSWD: ALL" >> /etc/sudoers
mkdir /home/kite/.ssh
mv /app /home/kite
mv /.bashrc /home/kite
chown -R kite /home/kite
chgrp -R kite /home/kite
chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
echo $SSH_KEY > /home/kite/.ssh/authorized_keys
/usr/local/bin/supervisord -n
