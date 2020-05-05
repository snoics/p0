#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}

echo "nginx ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}/config/nginx" ];
then
  mkdir -p ${VOLUME_PATH}/config/nginx
  mkdir -p ${VOLUME_PATH}/applications/nginx
  mkdir -p ${VOLUME_PATH}/data/nginx
  mkdir -p ${VOLUME_PATH}/logs/nginx
  cp -rf conf ${VOLUME_PATH}/config/nginx
  chown -R systemd-coredump:root ${VOLUME_PATH}/config/nginx
  chown -R systemd-coredump:root ${VOLUME_PATH}/applications/nginx
  chown -R systemd-coredump:root ${VOLUME_PATH}/data/nginx
  chown -R systemd-coredump:root ${VOLUME_PATH}/logs/nginx
fi

docker run --name nginx-${APPNAME}-1.0 \
    -p 90:80 \
    -v ${VOLUME_PATH}/config/nginx/conf:/opt/config/nginx \
    -v ${VOLUME_PATH}/applications/nginx:/opt/applications/nginx \
    -v ${VOLUME_PATH}/data/nginx:/opt/data/nginx \
    -v ${VOLUME_PATH}/logs/nginx:/opt/logs/nginx \
    -d --rm nginx:p0-1.0

##################################################################
#  http://localhost/home/       /opt/applications/nginx/home
#  http://localhost/console/    /opt/applications/nginx/console
#  http://localhost/api/        localhost:8080/api/
#
##################################################################