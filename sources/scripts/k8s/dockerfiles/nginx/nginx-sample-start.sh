#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/nginx

echo "nginx ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/config
  mkdir -p ${VOLUME_PATH}/data
  mkdir -p ${VOLUME_PATH}/logs
  cp -rf conf ${VOLUME_PATH}/config
  cp -rf applications ${VOLUME_PATH}
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name nginx-${APPNAME}-1.0 \
    -p 90:80 \
    -v ${VOLUME_PATH}/config/conf:/opt/p0/nginx/config/conf \
    -v ${VOLUME_PATH}/applications:/opt/p0/nginx/applications \
    -v ${VOLUME_PATH}/data:/opt/p0/nginx/data \
    -v ${VOLUME_PATH}/logs:/opt/p0/nginx/logs \
    -d --rm nginx:p0-1.0

##################################################################
#  PC端网站
#  http://localhost/home/       /opt/p0/nginx/applications/home
#
#  后台管理
#  http://localhost/console/    /opt/p0/nginx/applications/console
#
#  移动端
#  http://localhost/m/    /opt/p0/nginx/applications/m
#
#  后端API
#  http://localhost/api/        localhost:8080/api/
#
##################################################################