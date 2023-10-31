#!/bin/bash

namespace="kubeexecutor"
helm uninstall kubeexecutor -n ${namespace}
