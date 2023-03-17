#!/bin/bash

namespace="colonies"
kubectl get pods --namespace ${namespace} --watch
