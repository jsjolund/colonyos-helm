#!/bin/bash

namespace="k8sexecutor"
kubectl delete namespace ${namespace}

namespace_executors="executors"
kubectl delete namespace ${namespace_executors}
