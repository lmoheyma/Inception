#!/bin/sh

cd /var/www/html
rm -rf *
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
cp /wp-config.php /var/www/html/wp-config.php

sed -i -r "s/db1/$SQL_DATABASE/1" wp-config.php
sed -i -r "s/user/$SQL_USER/1" wp-config.php
sed -i -r "s/pwd/$SQL_PASSWORD/1" wp-config.php

wp core install --url=$DOMAIN_NAME/ --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --skip-email --allow-root
wp user create $USER $USER_EMAIL --role=author --user_pass=$USER_PASSWORD --allow-root

wp plugin install redis-cache --activate --allow-root
wp plugin update --all --allow-root
wp redis enable --allow-root

mkdir -p /var/run/php
/usr/sbin/php-fpm7.4 -F
