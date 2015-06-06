#!/bin/bash

pkg="RELEASE_4_4_9.tar.gz"
dest='/opt/www/phpmyadmin'

[ ! -f ${pkg} ] && wget https://github.com/phpmyadmin/phpmyadmin/archive/${pkg}

mkdir -p ${dest}
tar zxf ${pkg} -C ${dest}
