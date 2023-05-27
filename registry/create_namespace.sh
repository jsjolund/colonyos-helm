#!/bin/bash

namespace="registry"

echo "Installing Registry on Kubernetes ..."
echo "-> Creating Registry namespace" 
kubectl create namespace ${namespace}

#cd ..
echo ""
echo "-> Creating Kubernetes secret"
kubectl -n ${namespace} create secret generic basic-auth --from-file=registry.password

echo ""
echo "-> Deploying Registry"
kubectl -n ${namespace} apply -f registry-configmap.yaml
kubectl -n ${namespace} apply -f registry-storage.yaml
kubectl -n ${namespace} apply -f registry-service.yaml
kubectl -n ${namespace} apply -f registry-ingress.yaml
kubectl -n ${namespace} apply -f registry-deployment.yaml
