#!/bin/bash

ver='7.0.62'
pkg="apache-tomcat-${ver}.tar.gz"
dest='/opt/javahome'

[ ! -f ${pkg} ] && wget http://apache.fayea.com/tomcat/tomcat-7/v${ver}/bin/${pkg}

mkdir -p ${dest}
tar zxf ${pkg} -C ${dest}
cd ${dest}
ln -s apache-tomcat-${ver} tomcat
