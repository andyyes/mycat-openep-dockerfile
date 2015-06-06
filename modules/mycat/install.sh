#!/bin/bash

ver='1.4-beta'
pkg="${ver}.tar.gz"

[ ! -f ${pkg} ] && wget https://github.com/MyCATApache/Mycat-Server/archive/${pkg}

tar zxf ${pkg} -C /opt
mv Mycat-Server-${ver} mycat

cat > /etc/supervisord.d/mycat.conf << EOF
[program:mycat]
command=/opt/mycat/bin/mycat console
autorestart=true
EOF
