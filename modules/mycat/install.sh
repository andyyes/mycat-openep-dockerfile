#!/bin/bash

pkg="Mycat-server-1.4-beta-20150604171601-linux.tar.gz"

[ ! -f ${pkg} ] && wget https://raw.githubusercontent.com/MyCATApache/Mycat-download/master/1.4-beta/Mycat-server-1.4-beta-20150604171601-linux.tar.gz

tar zxf ${pkg} -C /opt

sed -i 's/wrapper.java.initmemory=2048/wrapper.java.initmemory=128/g' /opt/mycat/conf/wrapper.conf

cat > /etc/supervisord.d/mycat.conf << EOF
[program:mycat]
command=/opt/mycat/bin/mycat console
priority=501
stopsignal=INT
stopasgroup=true
autorestart=true
EOF
