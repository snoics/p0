#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}

echo "redis ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}/data/redis" ];
then
  mkdir -p ${VOLUME_PATH}/config/redis
  mkdir -p ${VOLUME_PATH}/data/redis
  mkdir -p ${VOLUME_PATH}/logs/redis
  cp -f ./redis.conf ${VOLUME_PATH}/config/redis
  chown -R systemd-coredump:root ${VOLUME_PATH}/config/redis
  chown -R systemd-coredump:root ${VOLUME_PATH}/data/redis
  chown -R systemd-coredump:root ${VOLUME_PATH}/logs/redis
fi

docker run --name redis-${APPNAME}-1.0 \
    -p 6379:6379 \
    -v ${VOLUME_PATH}/config/redis/redis.conf:/opt/config/redis.conf \
    -v ${VOLUME_PATH}/data/redis:/opt/data/redis \
    -v ${VOLUME_PATH}/logs/redis:/opt/logs/redis \
    -d --rm redis:p0-1.0
