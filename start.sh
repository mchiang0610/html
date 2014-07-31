chown -R kite /home/kite
chgrp -R kite /home/kite
chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
echo $SSH_KEY > /home/kite/.ssh/authorized_keys
/usr/local/bin/supervisord -n
