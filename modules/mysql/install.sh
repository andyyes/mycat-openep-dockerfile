#!/bin/bash

yum -y --enablerepo=mysql56-community install mysql-community-server

cat > /etc/supervisord.d/mysql.conf << EOF
[program:mysql]
command=/usr/bin/pidproxy /var/run/mysqld/mysqld.pid /usr/bin/mysqld_safe
autorestart=true
EOF