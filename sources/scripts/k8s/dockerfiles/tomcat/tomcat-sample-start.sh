#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/tomcat

echo "tomcat ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/config
  mkdir -p ${VOLUME_PATH}/applications
  mkdir -p ${VOLUME_PATH}/data
  mkdir -p ${VOLUME_PATH}/logs
  cp -rf conf ${VOLUME_PATH}/config/
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name tomcat-${APPNAME}-1.0 \
    -p 8080:8080 \
    -v ${VOLUME_PATH}/config/conf/catalina.sh:/opt/p0/tomcat/config/catalina.sh \
    -v ${VOLUME_PATH}/config/conf/logging.properties:/opt/p0/tomcat/config/conf/logging.properties \
    -v ${VOLUME_PATH}/config/conf/server.xml:/opt/p0/tomcat/config/conf/server.xml \
    -v ${VOLUME_PATH}/applications:/opt/tomcat/webapps \
    -v ${VOLUME_PATH}/data:/opt/p0/tomcat/data \
    -v ${VOLUME_PATH}/logs:/opt/p0/tomcat/logs \
    -d --rm tomcat:p0-1.0
