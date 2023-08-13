#!/bin/bash

namespace="johank-mlexecutor"
helm upgrade mlexecutor -f values.yaml -n ${namespace} --wait .
