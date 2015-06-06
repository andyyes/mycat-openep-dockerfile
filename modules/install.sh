#!/bin/bash

# Install modules
for m in os scm zsh jdk8 maven mycat mysql nginx php phpmyadmin tomcat zookeeper ice; do
    if [ -d ${m} ]; then
        echo -e "\n---- Install module ${m} ----"
        cd ${m}
        [ -d fs ] && cp -a fs/* /
        [ -f install.sh ] && sh install.sh
        cd ../
    fi
done

# Cleanup
#rm -rf /tmp/_dt
#yum clean all