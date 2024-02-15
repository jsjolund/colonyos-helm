#!/bin/bash

namespace="python"
helm install pythonexecutor -f values.yaml -n ${namespace} .
