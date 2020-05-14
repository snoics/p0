#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/elasticsearch

echo "elasticsearch ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/data
  mkdir -p ${VOLUME_PATH}/logs
  cp -rf config ${VOLUME_PATH}
  chmod -R 775 ${VOLUME_PATH}
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name elasticsearch-${APPNAME}-1.0 \
    -p 9200:9200 \
    -p 9300:9300 \
    -v ${VOLUME_PATH}/config:/usr/share/elasticsearch/config \
    -v ${VOLUME_PATH}/data:/usr/share/elasticsearch/data \
    -v ${VOLUME_PATH}/logs:/opt/p0/elasticsearch/logs \
    -e "cluster.name=elasticsearch" \
    -e "discovery.type=single-node" \
    -d \
    --rm \
    elasticsearch:p0-1.0
