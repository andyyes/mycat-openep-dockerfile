#!/bin/bash

yum -y --enablerepo=nginx install nginx

cat > /etc/supervisord.d/nginx.conf << EOF
[program:nginx]
command=/usr/sbin/nginx
EOF