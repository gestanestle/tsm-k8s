#!/bin/bash

kubectl delete all --all -n tsm
kubectl delete cluster --all -n tsm
kubectl delete configmap --all -n tsm
kubectl delete secret --all -n tsm

kubectl delete namespace kafka
kubectl delete pvc --all -n kafka
kubectl delete cluster --all
kubectl delete configmap --all
kubectl delete secret --all
