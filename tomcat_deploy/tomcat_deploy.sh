#!/bin/bash
docker build --force-rm -t docker-test-tomcat:latest .
docker run -d\
  -it \
  --privileged=true \
  --name docker-test-tomcat \
  --mount type=bind,source=/home/ubuntu/Test-viadirect/tomcat_deploy,target=/data \
  docker-test-tomcat /sbin/init
docker exec --privileged=true docker-test-tomcat /data/tomcat_test.sh $1
