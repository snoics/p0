#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}

echo "tomcat ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}/config/tomcat" ];
then
  mkdir -p ${VOLUME_PATH}/config/tomcat
  mkdir -p ${VOLUME_PATH}/applications/tomcat
  mkdir -p ${VOLUME_PATH}/data/tomcat
  mkdir -p ${VOLUME_PATH}/logs/tomcat
  cp -rf ./conf/* ${VOLUME_PATH}/config/tomcat
  chown -R systemd-coredump:root ${VOLUME_PATH}/config/tomcat
  chown -R systemd-coredump:root ${VOLUME_PATH}/applications/tomcat
  chown -R systemd-coredump:root ${VOLUME_PATH}/data/tomcat
  chown -R systemd-coredump:root ${VOLUME_PATH}/logs/tomcat
fi

docker run --name tomcat-${APPNAME}-1.0 \
    -p 8080:8080 \
    -v ${VOLUME_PATH}/config/tomcat/catalina.sh:/opt/config/tomcat/catalina.sh \
    -v ${VOLUME_PATH}/config/tomcat/logging.properties:/opt/config/tomcat/conf/logging.properties \
    -v ${VOLUME_PATH}/config/tomcat/server.xml:/opt/config/tomcat/conf/server.xml \
    -v ${VOLUME_PATH}/applications/tomcat:/opt/tomcat/webapps \
    -v ${VOLUME_PATH}/data/tomcat:/opt/data/tomcat \
    -v ${VOLUME_PATH}/logs/tomcat:/opt/logs/tomcat \
    -d --rm tomcat:p0-1.0
