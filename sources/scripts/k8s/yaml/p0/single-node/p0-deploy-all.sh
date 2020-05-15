#!/bin/bash

kubectl delete namespace p0
kubectl delete pv p0-pv
kubectl delete storageclass p0-storage

APPNAME=p0 #应用名称
RESOURCE_PATH=/home/p0/sources/scripts/k8s/yaml #资源路径
DATA_PATH=/home/p0/disk/${APPNAME} #运行期数据路径

rm -rf DATA_PATH

./p0-data-initialize.sh

kubectl create -f ${RESOURCE_PATH}/${APPNAME}/single-node/00.create-p0-initialize.yaml
kubectl create -f ${RESOURCE_PATH}/${APPNAME}/single-node/01.create-p0-apps.yaml