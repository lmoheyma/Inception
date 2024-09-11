#!/bin/sh

adduser $FTP_USR --gecos "$FTP_USR FTP,room,phone,phone2" --disabled-password
echo "$FTP_USR:$FTP_PASSWORD" | /usr/sbin/chpasswd
chown -R $FTP_USR:$FTP_USR /var/www/html
echo $FTP_USR | tee -a /etc/vsftpd.userlist

exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf