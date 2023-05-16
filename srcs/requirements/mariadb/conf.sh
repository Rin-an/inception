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
        mysql -e "create user 'ssadiki'@'localhost' IDENTIFIED BY 'password';"
        mysql -e "create user 'guest'@'localhost' IDENTIFIED BY 'password2';"
        mysql -e "grant all privileges on wordpress.* TO 'ssadiki'@'localhost' with grant option;"
        mysql -e "grant select, create, insert, alter, drop, lock tables, create temporary tables, delete, update,execute on wordpress.* to 'guest'@'localhost';"
        mysql -e "flush privileges;"
fi
rc-service mariadb stop
mysqld_safe

