#!/bin/bash

namespace="colonies"
echo "upgrading ${namespace} ..."
helm upgrade colonies -f values.yaml -n ${namespace} --wait .
