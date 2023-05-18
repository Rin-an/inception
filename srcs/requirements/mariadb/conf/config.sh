#!/bin/sh
openrc
touch run/openrc/softlevel
rc-service mariadb setup
rc-service mariadb start
if mysqlshow | grep -q wordpress; then
        echo "Database wordpress already exist";
else
        echo "Creating database and users...";
        mysql -e "create database wordpress;"
        mysql -e "create user 'ssadiki'@'%' IDENTIFIED BY 'password';"
        mysql -e "grant all privileges on wordpress.* TO 'ssadiki'@'%' with grant option;"
        mysql -e "flush privileges;"
fi
rc-service mariadb restart
rc-service mariadb stop
mysqld_safe

