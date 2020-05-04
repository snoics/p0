#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}

echo "mysql 5.7.30 ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}
  tar -zxvf ./data/mysql-data-standard-initializer-1.0.tar -C ${VOLUME_PATH}
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name mysql-${APPNAME}-1.0 \
    -p 3306:3306 \
    -v ${VOLUME_PATH}/config/mysql/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf \
    -v ${VOLUME_PATH}/data/mysql/db:/opt/data/mysql/db \
    -v ${VOLUME_PATH}/data/mysql/tmp:/opt/data/mysql/tmp \
    -v ${VOLUME_PATH}/logs/mysql:/opt/logs/mysql \
    -d --rm mysql:standard-1.0
