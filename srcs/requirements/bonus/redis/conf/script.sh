#!/bin/sh
#wget http://download.redis.io/releases/redis-6.2.6.tar.gz
#tar xzf redis-6.2.6.tar.gz
#rm redis-6.2.6.tar.gz
#cd redis-6.2.6
#make && make install
openrc
touch /run/openrc/softlevel
rc-service redis start
