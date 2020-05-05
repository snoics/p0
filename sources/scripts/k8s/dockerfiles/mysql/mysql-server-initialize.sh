#!/bin/bash
echo "mysql 5.7.30 standard server initialize ......"

VOLUME_PATH=/home/p0/disk/initialize/mysql/standard
PASSWORD=#f4^6]e9!go

if [ -d "${VOLUME_PATH}" ];
then
  rm -rf ${VOLUME_PATH}/config
  rm -rf ${VOLUME_PATH}/data
  rm -rf ${VOLUME_PATH}/logs
  mkdir -p ${VOLUME_PATH}/config
  mkdir -p ${VOLUME_PATH}/data/db
  mkdir -p ${VOLUME_PATH}/data/tmp
  mkdir -p ${VOLUME_PATH}/logs
  cp -f ./mysqld.cnf ${VOLUME_PATH}/config/
  chown -R systemd-coredump:root ${VOLUME_PATH}
fi


docker run --name mysql-p0-1.0 -e MYSQL_ROOT_PASSWORD=${PASSWORD} \
    -p 3306:3306 \
    -v ${VOLUME_PATH}/config/mysqld.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf \
    -v ${VOLUME_PATH}/data/db:/opt/p0/mysql/data/db \
    -v ${VOLUME_PATH}/data/tmp:/opt/p0/mysql/data/tmp \
    -v ${VOLUME_PATH}/logs:/opt/p0/mysql/logs \
    -d --rm mysql:p0-1.0


#####################################################################
# 以上步骤操作完，默认已启用远程访问，如需手工操作，按以下步骤执行
#
# docker exec -it containerId bash
#
# mysql -u root -p
# mysql>> use mysql;
# mysql>> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
# 或者修改密码
# mysql>> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY ${PASSWORD} WITH GRANT OPTION;
# mysql>> flush privileges;
# mysql>> exit;
#
####################################################################