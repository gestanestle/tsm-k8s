#!/bin/bash

kubectl delete all --all -n tsm

kubectl delete configmap --all -n tsm
kubectl delete secret --all -n tsm

kubectl delete namespace kafka
kubectl delete pvc --all -n kafka

kubectl delete configmap --all
kubectl delete secret --all
