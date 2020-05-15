#!/bin/bash
echo "rabbitmq standard server initialize ......"

VOLUME_PATH=/home/p0/disk/initialize/rabbitmq/standard
PASSWORD=#f4^6]e9!go

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}/config
  mkdir -p ${VOLUME_PATH}/data/mnesia
  mkdir -p ${VOLUME_PATH}/logs
  chmod -R 775 ${VOLUME_PATH}
  cp -rf conf ${VOLUME_PATH}/config
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name rabbitmq-${APPNAME}-1.0 \
    -p 4369:4369 \
    -p 5672:5672 \
    -p 15672:15672 \
    -p 25672:25672 \
    --hostname p0-app-0 \
    -v ${VOLUME_PATH}/config/conf/rabbitmq.conf:/etc/rabbitmq/rabbitmq.conf \
    -v ${VOLUME_PATH}/config/conf/rabbitmq-env.conf:/etc/rabbitmq/rabbitmq-env.conf \
    -v ${VOLUME_PATH}/data/mnesia:/opt/rabbitmq_server/var/lib/rabbitmq/mnesia \
    -v ${VOLUME_PATH}/logs:/opt/rabbitmq_server/var/log \
    -d --rm rabbitmq:p0-1.0

#####################################################################
#启用远程访问
#
# rabbitmqctl add_user admin #f4^6]e9!go
# rabbitmqctl set_user_tags admin administrator
# rabbitmqctl set_permissions -p "/" admin ".*" ".*" ".*"
#
# cd /home/p0/disk/initialize/rabbitmq/standard/
# tar -zcvf rabbitmq-data-standard-initializer-1.0.tar *
# mv -f /home/p0/disk/initialize/rabbitmq/standard/rabbitmq-data-standard-initializer-1.0.tar /home/p0/sources/scripts/k8s/dockerfiles/rabbitmq/data
#
# 以上步骤操作完，默认已启用远程访问，如需手工操作，按以下步骤执行
####################################################################