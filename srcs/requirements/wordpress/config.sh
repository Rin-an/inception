#!/bin/sh
openrc
touch run/openrc/softlevel
#rc-service mariadb setup
#rc-service mariadb start
#mysql -e "create database wordpress;"
#mysql -e "create user 'test'@'localhost' IDENTIFIED BY 'password';"
#mysql -e "grant all privileges on wordpress.* to 'test'@'localhost' with grant option;"
#mysql -e "flush privileges;"
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd wordpress
rm wp-config-sample.php
#wp core config --dbname=wordpress --dbuser=guest --dbpass=password2 --dbhost=mariadb --dbprefix=wp_ --extra-php <<PHP
#define ( 'WP_DEBUG', true);
#define ( 'WP_DEBUG_LOG', true);
#PHP
#wp core install --url="http://example.com" --title="Blog Title" --admin_user="adminuser" --admin_password="password" --admin_email="email@domain.com"
#rc-service php-fpm7 start
