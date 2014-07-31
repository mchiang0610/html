adduser --disabled-password --gecos "" $SSH_USER; usermod -a -G sudo $SSH_USER
echo "$SSH_USER	ALL=NOPASSWD: ALL" >> /etc/sudoers
mkdir /home/$SSH_USER/.ssh
mv /app /home/$SSH_USER
mv /.bashrc /home/$SSH_USER
chown -R $SSH_USER /home/$SSH_USER
chgrp -R $SSH_USER /home/$SSH_USER
chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
echo $SSH_KEY > /home/$SSH_USER/.ssh/authorized_keys
/usr/local/bin/supervisord -n
