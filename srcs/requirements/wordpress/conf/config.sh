#!/bin/sh
openrc
touch run/openrc/softlevel
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd wordpress
rm wp-config-sample.php wp-config.php
wp config create --dbname=$WORDPRESS_DB_NAME  --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD \
	--dbhost=$WORDPRESS_DB_HOST \
                  --skip-check \
                  --path=/wordpress/
wp core install --url="https://example.com" --title="Inception" --admin_user=$WORDPRESS_DB_USER --admin_password=$WORDPRESS_DB_PASSWORD --admin_email="ssadiki@gmail.com"
wp user create "$WORDPRESS_DB_ROOT_USER" "root@gmail.com" --role=administrator --user_pass="$WORDPRESS_DB_ROOT_PASSWORD" --path=/wordpress
exec /usr/sbin/php-fpm7 --nodaemonize
