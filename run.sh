#!/bin/sh

in=$1
cn=$2

if [ $# -ge 2 ]
then
    docker run --privileged -d -P -h ${cn} --name ${cn} -v /opt/pub:/opt/pub ${in}
else
    echo "run.sh [imageName] [containerName]"
fi
