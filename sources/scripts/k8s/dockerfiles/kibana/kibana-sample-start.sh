#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/kibana

echo "kibana ${APPNAME} server deploy and start ......"

docker run --name kibana-${APPNAME}-1.0 \
    -p 5610:5610 \
    --link elasticsearch-${APPNAME}-1.0:es \
    -e "elasticsearch.hosts=http://es:9200" \
    -d \
    --rm \
    kibana:p0-1.0
