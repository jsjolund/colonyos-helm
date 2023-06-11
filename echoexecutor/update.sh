#!/bin/bash

namespace="echo"
helm upgrade echoexecutor -f values.yaml -n ${namespace} --wait .
