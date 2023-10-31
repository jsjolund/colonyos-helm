#!/bin/bash

namespace="kubeexecutor"
helm upgrade k8sexecutor -f values.yaml -n ${namespace} --wait .
