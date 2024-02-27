#!/bin/bash

namespace="johank-kubeexecutor"
helm install kubeexecutor -f values.yaml -n ${namespace} .
