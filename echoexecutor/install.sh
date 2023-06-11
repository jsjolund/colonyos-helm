#!/bin/bash

namespace="echo"
helm install echoexecutor -f values.yaml -n ${namespace} .
