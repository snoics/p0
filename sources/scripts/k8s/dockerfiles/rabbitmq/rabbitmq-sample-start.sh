#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}

echo "rabbitmq ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}/config/rabbitmq" ];
then
  mkdir -p ${VOLUME_PATH}/config/rabbitmq
  mkdir -p ${VOLUME_PATH}/data/rabbitmq
  mkdir -p ${VOLUME_PATH}/logs/rabbitmq
  cp -rf ./conf/* ${VOLUME_PATH}/config/rabbitmq
  chown -R systemd-coredump:root ${VOLUME_PATH}/config/rabbitmq
  chown -R systemd-coredump:root ${VOLUME_PATH}/data/rabbitmq
  chown -R systemd-coredump:root ${VOLUME_PATH}/logs/rabbitmq
fi

docker run --name rabbitmq-${APPNAME}-1.0 \
    -p 5672:5672 \
    -p 15672:15672 \
    -v ${VOLUME_PATH}/config/rabbitmq/rabbitmq.conf:/etc/rabbitmq/rabbitmq.conf \
    -v ${VOLUME_PATH}/config/rabbitmq/rabbitmq-env.conf:/etc/rabbitmq/rabbitmq-env.conf \
    -v ${VOLUME_PATH}/data/rabbitmq:/opt/data/rabbitmq \
    -v ${VOLUME_PATH}/logs/rabbitmq:/opt/logs/rabbitmq \
    -d --rm rabbitmq:p0-1.0
