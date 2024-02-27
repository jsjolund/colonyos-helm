#!/bin/bash

namespace="johank-kubeexecutor"
helm upgrade kubeexecutor -f values.yaml -n ${namespace} --wait .
