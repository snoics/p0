#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/rabbitmq

echo "rabbitmq ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/config
  mkdir -p ${VOLUME_PATH}/data
  mkdir -p ${VOLUME_PATH}/logs
  cp -rf conf ${VOLUME_PATH}/config
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name rabbitmq-${APPNAME}-1.0 \
    -p 5672:5672 \
    -p 15672:15672 \
    -v ${VOLUME_PATH}/config/conf/rabbitmq.conf:/etc/rabbitmq/rabbitmq.conf \
    -v ${VOLUME_PATH}/config/conf/rabbitmq-env.conf:/etc/rabbitmq/rabbitmq-env.conf \
    -v ${VOLUME_PATH}/data:/opt/p0/rabbitmq/data \
    -v ${VOLUME_PATH}/logs:/opt/p0/rabbitmq/logs \
    -d --rm rabbitmq:p0-1.0
