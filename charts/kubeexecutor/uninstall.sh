#!/bin/bash

namespace="johank-kubeexecutor"
helm uninstall kubeexecutor -n ${namespace}
