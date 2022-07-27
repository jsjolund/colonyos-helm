#!/bin/bash

namespace="colonies"

kubectl create namespace ${namespace}
helm install colonies -f values.yaml -n ${namespace} .
