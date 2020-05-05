#!/bin/bash
APPNAME=p0
VOLUME_PATH=/home/p0/disk/${APPNAME}/mysql

echo "mysql 5.7.30 ${APPNAME} server deploy and start ......"

if [ ! -d "${VOLUME_PATH}" ];
then
  mkdir -p ${VOLUME_PATH}
  tar -zxvf ./data/mysql-data-standard-initializer-1.0.tar -C ${VOLUME_PATH}
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi

docker run --name mysql-${APPNAME}-1.0 \
    -p 3306:3306 \
    -v ${VOLUME_PATH}/config/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf \
    -v ${VOLUME_PATH}/data/db:/opt/p0/mysql/data/db \
    -v ${VOLUME_PATH}/data/tmp:/opt/p0/mysql/data/tmp \
    -v ${VOLUME_PATH}/logs:/opt/p0/mysql/logs \
    -d --rm mysql:p0-1.0
