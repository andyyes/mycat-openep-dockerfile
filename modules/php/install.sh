#!/bin/bash

yum -y --enablerepo=remi,remi-php56 install php php-fpm php-mysqlnd php-opcache php-mbstring php-mcrypt

cat > /etc/supervisord.d/php-fpm.conf << EOF
[program:php-fpm]
command=/usr/sbin/php5-fpm -c /etc/php5/fpm
EOF