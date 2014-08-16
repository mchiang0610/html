adduser --disabled-password --gecos "" user; usermod -a -G sudo user
echo "user	ALL=NOPASSWD: ALL" >> /etc/sudoers
mkdir /home/user/.ssh
mv /.bashrc /home/user
chown -R user /home/user
chgrp -R user /home/user
chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
echo $SSH_KEY > /home/user/.ssh/authorized_keys
/usr/sbin/nginx &
/usr/sbin/sshd -D
