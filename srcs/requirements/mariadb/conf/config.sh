#!/bin/sh
openrc
touch run/openrc/softlevel
rc-service mariadb setup
rc-service mariadb start
if mysqlshow | grep -q wordpress; then
	echo "Database $MYSQL_DATABASE already exist";
else
        echo "Creating database and users...";
	mysql -e "create database $MYSQL_DATABASE;"
	mysql -e "create user '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
	mysql -e "grant all privileges on $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' with grant option;"
        mysql -e "flush privileges;"
fi
#rc-service mariadb restart
rc-service mariadb stop
mysqld_safe
