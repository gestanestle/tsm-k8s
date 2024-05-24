#!/bin/bash

kubectl apply -f \
	https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.16/releases/cnpg-1.16.5.yaml
kubectl apply -f ./event-command-service -n cnpg-system
