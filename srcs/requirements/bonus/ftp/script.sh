#!/bin/sh
echo -e "$FTP_PASS\n$FTP_PASS" | adduser $FTP_USER
directory="/home/$FTP_USER/wordpress"
if [ -d "$directory" ]; then
    echo "Directory exists"
else
	mkdir $directory;
	chmod 777 /home/$FTP_USER/wordpress
fi
echo "$FTP_USER" | tee -a /etc/vsftpd.userlist
chown -R $FTP_USER:$FTP_USER /home/$FTP_USER/wordpress/

exec vsftpd /etc/vsftpd/vsftpd.conf
