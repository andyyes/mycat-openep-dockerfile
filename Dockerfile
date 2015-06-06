# Mycat Openep Dockerfile

FROM centos-6.6:latest
MAINTAINER oznyang <oznyang@163.com>

ADD modules/ /tmp/_dt/
RUN sh /tmp/_dt/install.sh

EXPOSE 22 80 8080
CMD /bin/bash