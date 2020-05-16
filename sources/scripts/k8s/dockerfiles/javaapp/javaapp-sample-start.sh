#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/javaapp

echo "javaapp ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/bin
  mkdir -p ${VOLUME_PATH}/logs
  cp -f ./entrypoint.sh ${VOLUME_PATH}/bin
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name javaapp-${APPNAME}-1.0 \
    -p 9090:9090 \
    -v ${VOLUME_PATH}:/opt/p0/javaapp \
    --rm javaapp:p0-1.0
