#!/bin/bash

namespace="k8sexecutor"
kubectl create namespace ${namespace}

namespace_executors="executors"
kubectl create namespace ${namespace_executors}
