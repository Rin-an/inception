#!/bin/sh
openrc
touch run/openrc/softlevel
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd wordpress
rm wp-config-sample.php
wp config create --dbname=wordpress  --dbuser=ssadiki --dbpass=password \
                  --dbhost=mariadb \
                  --skip-check \
                  --path=/wordpress/
#wp core install --url="http://example.com" --title="Blog Title" --admin_user="adminuser" --admin_password="password" --admin_email="email@domain.com"
#rc-service php-fpm7 start
exec /usr/sbin/php-fpm7 --nodaemonize
