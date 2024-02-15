#!/bin/bash

namespace="kubeexecutor"
helm install kubeexecutor -f values.yaml -n ${namespace} .
