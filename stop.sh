#!/bin/bash

kubectl delete all --all -n default
kubectl patch pv ecs-postgres-volume -p '{"metadata":{"finalizers":null}}'
kubectl delete pv ecs-postgres-volume
kubectl delete pvc ecs-postgres-volume-claim
kubectl delete configmap ecs-app-config ecs-psql-config
kubectl delete secret ecs-psql-secret
