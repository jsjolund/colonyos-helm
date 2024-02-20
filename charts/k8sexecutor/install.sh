#!/bin/bash

namespace="k8sexecutor"
helm install k8sexecutor -f values.yaml -n ${namespace} .
