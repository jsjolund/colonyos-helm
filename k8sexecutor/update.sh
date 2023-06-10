#!/bin/bash

namespace="k8sexecutor"
helm upgrade k8sexecutor -f values.yaml -n ${namespace} --wait .
