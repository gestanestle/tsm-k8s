#!/bin/bash

kubectl delete all --all -n cnpg-system
kubectl patch pv ecs-postgres-volume -p '{"metadata":{"finalizers":null}}' -n cnpg-system
kubectl delete pv ecs-postgres-volume -n cnpg-system
kubectl delete pvc ecs-postgres-volume-claim -n cnpg-system
kubectl delete configmap ecs-app-config ecs-psql-config -n cnpg-system
kubectl delete secret ecs-psql-secret -n cnpg-system
