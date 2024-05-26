#!/bin/bash

kubectl delete all --all -n default
kubectl delete cluster ecs-pg-cluster
kubectl delete configmap ecs-app-config
kubectl delete secret ecs-psql-user-secret ecs-psql-superuser-secret
