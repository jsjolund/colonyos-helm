#!/bin/bash

namespace="johank-mlexecutor"
#helm install mlexecutor --debug  -f values.yaml -n ${namespace} .
helm install mlexecutor -f values.yaml -n ${namespace} .
#helm template mlexecutor --debug -f values.yaml -n ${namespace} .
