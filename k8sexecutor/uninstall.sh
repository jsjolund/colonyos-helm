#!/bin/bash

namespace="k8sexecutor"
helm uninstall k8sexecutor -n ${namespace}
