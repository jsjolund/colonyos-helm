#!/bin/bash

namespace="python"
helm upgrade pythonexecutor -f values.yaml -n ${namespace} --wait .
