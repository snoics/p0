#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/rabbitmq

echo "rabbitmq ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}
  tar -zxvf ./data/rabbitmq-data-standard-initializer-1.0.tar -C ${VOLUME_PATH}
  chmod -R 775 ${VOLUME_PATH}
  cp -rf conf ${VOLUME_PATH}/config
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name rabbitmq-${APPNAME}-1.0 \
    -p 4369:4369 \
    -p 5672:5672 \
    -p 15672:15672 \
    -p 25672:25672 \
    --hostname rabbitmq-${APPNAME}-1.0 \
    -v ${VOLUME_PATH}/config/conf/rabbitmq.conf:/etc/rabbitmq/rabbitmq.conf \
    -v ${VOLUME_PATH}/config/conf/rabbitmq-env.conf:/etc/rabbitmq/rabbitmq-env.conf \
    -v ${VOLUME_PATH}/data/mnesia:/opt/rabbitmq_server/var/lib/rabbitmq/mnesia \
    -v ${VOLUME_PATH}/logs:/opt/rabbitmq_server/var/log \
    -d --rm rabbitmq:p0-1.0

#############################################################
#启用远程访问
#
# rabbitmqctl add_user admin #f4^6]e9!go
# rabbitmqctl set_user_tags admin administrator
# rabbitmqctl set_permissions -p "/" admin ".*" ".*" ".*"
#############################################################

