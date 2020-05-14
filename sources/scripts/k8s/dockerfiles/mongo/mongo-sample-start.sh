#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/mongodb

echo "mongodb ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/config
  mkdir -p ${VOLUME_PATH}/data
  mkdir -p ${VOLUME_PATH}/logs
  cp -rf mongod.conf ${VOLUME_PATH}/config
  chmod -R 775 ${VOLUME_PATH}
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name mongo-${APPNAME}-1.0 \
    -p 27017:27017 \
    -v ${VOLUME_PATH}/config:/opt/p0/mongodb/config \
    -v ${VOLUME_PATH}/data:/opt/p0/mongodb/data \
    -v ${VOLUME_PATH}/logs:/opt/p0/mongodb/logs \
    -d \
    --rm \
    mongo:p0-1.0 \
    --config /opt/p0/mongodb/config/mongod.conf
