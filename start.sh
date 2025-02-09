#!/bin/bash

kubectl create namespace kafka
kubectl create -f 'https://strimzi.io/install/latest?namespace=kafka' -n kafka
kubectl apply -f ./kafka -n kafka
kubectl wait kafka/tsm-cluster --for=condition=Ready --timeout=300s -n kafka

#kubectl apply --server-side -f \
#	https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.23/releases/cnpg-1.23.1.yaml
#kubectl apply -f ./event-command-service  -n tsm
