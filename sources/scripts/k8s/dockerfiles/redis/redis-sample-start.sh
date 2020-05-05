#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/redis

echo "redis ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/config
  mkdir -p ${VOLUME_PATH}/data
  mkdir -p ${VOLUME_PATH}/logs
  cp -f ./redis.conf ${VOLUME_PATH}/config
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name redis-${APPNAME}-1.0 \
    -p 6379:6379 \
    -v ${VOLUME_PATH}/config/redis.conf:/opt/p0/redis/config/redis.conf \
    -v ${VOLUME_PATH}/data:/opt/p0/redis/data \
    -v ${VOLUME_PATH}/logs:/opt/p0/redis/logs \
    -d --rm redis:p0-1.0
