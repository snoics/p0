#!/bin/bash

kubectl delete namespace p0
kubectl delete pv p0-pv
kubectl create -f 01.create-p0-apps.yaml