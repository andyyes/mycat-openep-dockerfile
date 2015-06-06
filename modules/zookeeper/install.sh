#!/bin/bash

ver='3.4.6'
pkg="zookeeper-${ver}.tar.gz"

[ ! -f ${pkg} ] && wget http://apache.fayea.com/zookeeper/zookeeper-${ver}/${pkg}

tar zxf ${pkg} -C /opt

cat > /etc/supervisord.d/zookeeper.conf << EOF
[program:zookeeper]
command=zkServer.sh start-foreground
autorestart=true
stopsignal=KILL
EOF