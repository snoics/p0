#!/bin/bash

APPNAME=p0 #应用名称
RESOURCE_PATH=/home/p0/sources/scripts/k8s/dockerfiles #资源路径
DATA_PATH=/home/p0/disk/${APPNAME} #运行期数据路径

#docker build
cd ${RESOURCE_PATH}/centos
./build.sh

cd ${RESOURCE_PATH}/java
./build.sh

cd ${RESOURCE_PATH}/javaapp
./build.sh

cd ${RESOURCE_PATH}/tomcat
./build.sh

cd ${RESOURCE_PATH}/mysql
./build.sh

cd ${RESOURCE_PATH}/redis
./build.sh

cd ${RESOURCE_PATH}/nginx
./build.sh

cd ${RESOURCE_PATH}/rabbitmq
./build.sh

cd ${RESOURCE_PATH}/mongo
./build.sh

cd ${RESOURCE_PATH}/elasticsearch
./build.sh

cd ${RESOURCE_PATH}/kibana
./build.sh

#######################################################################
# initialize data
#######################################################################

cd ${RESOURCE_PATH}/mysql
APP_DATA_PATH=${DATA_PATH}/mysql
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "mysql 5.7.30 ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}
  tar -zxvf ./data/mysql-data-standard-initializer-1.0.tar -C ${APP_DATA_PATH}
  chmod -R 775 ${APP_DATA_PATH}
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/mongo
APP_DATA_PATH=${DATA_PATH}/mongodb
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "mongodb ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}/config
  mkdir -p ${APP_DATA_PATH}/data
  mkdir -p ${APP_DATA_PATH}/logs
  cp -rf mongod.conf ${APP_DATA_PATH}/config
  chmod -R 775 ${APP_DATA_PATH}
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/redis
APP_DATA_PATH=${DATA_PATH}/redis
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "redis ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}/config
  mkdir -p ${APP_DATA_PATH}/data
  mkdir -p ${APP_DATA_PATH}/logs
  cp -f ./redis.conf ${APP_DATA_PATH}/config
  chmod -R 775 ${APP_DATA_PATH}
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/rabbitmq
APP_DATA_PATH=${DATA_PATH}/rabbitmq
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "rabbitmq ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}
  tar -zxvf ./data/rabbitmq-data-standard-initializer-1.0.tar -C ${APP_DATA_PATH}
  chmod -R 775 ${APP_DATA_PATH}
  cp -rf conf ${APP_DATA_PATH}/config
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/elasticsearch
APP_DATA_PATH=${DATA_PATH}/elasticsearch
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "elasticsearch ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}/data
  mkdir -p ${APP_DATA_PATH}/logs
  cp -rf config ${APP_DATA_PATH}
  chmod -R 775 ${APP_DATA_PATH}
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/kibana
APP_DATA_PATH=${DATA_PATH}/kibana
#if [ ! -d "${APP_DATA_PATH}" ];
#then
#  echo "kibana ${APPNAME} data initialize ......"
#fi

cd ${RESOURCE_PATH}/nginx
APP_DATA_PATH=${DATA_PATH}/nginx
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "nginx ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}
  mkdir -p ${APP_DATA_PATH}/config
  mkdir -p ${APP_DATA_PATH}/data
  mkdir -p ${APP_DATA_PATH}/logs
  cp -rf conf ${APP_DATA_PATH}/config
  cp -rf applications ${APP_DATA_PATH}
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/tomcat
APP_DATA_PATH=${DATA_PATH}/tomcat
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "tomcat ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}/config
  mkdir -p ${APP_DATA_PATH}/applications
  mkdir -p ${APP_DATA_PATH}/data
  mkdir -p ${APP_DATA_PATH}/logs
  cp -rf conf ${APP_DATA_PATH}/config/
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/javaapp
APP_DATA_PATH=${DATA_PATH}/javaapp/mall-admin
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "javaapp-00 ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}/bin
  mkdir -p ${APP_DATA_PATH}/logs
  cp -f ./entrypoint.sh ${APP_DATA_PATH}/bin
  echo "java -jar -Dspring.profiles.active=prod /opt/p0/javaapp/lib/mall-admin-1.0-SNAPSHOT.jar" >> ${APP_DATA_PATH}/bin/entrypoint.sh
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/javaapp
APP_DATA_PATH=${DATA_PATH}/javaapp/mall-search
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "javaapp-01 ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}/bin
  mkdir -p ${APP_DATA_PATH}/logs
  cp -f ./entrypoint.sh ${APP_DATA_PATH}/bin
  echo "java -jar -Dspring.profiles.active=prod /opt/p0/javaapp/lib/mall-search-1.0-SNAPSHOT.jar" >> ${APP_DATA_PATH}/bin/entrypoint.sh
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

cd ${RESOURCE_PATH}/javaapp
APP_DATA_PATH=${DATA_PATH}/javaapp/mall-portal
if [ ! -d "${APP_DATA_PATH}" ];
then
  echo "javaapp-02 ${APPNAME} data initialize ......"
  mkdir -p ${APP_DATA_PATH}/bin
  mkdir -p ${APP_DATA_PATH}/logs
  cp -f ./entrypoint.sh ${APP_DATA_PATH}/bin
  echo "java -jar -Dspring.profiles.active=prod /opt/p0/javaapp/lib/mall-portal-1.0-SNAPSHOT.jar" >> ${APP_DATA_PATH}/bin/entrypoint.sh
  chown -R systemd-coredump:root ${APP_DATA_PATH}
fi

