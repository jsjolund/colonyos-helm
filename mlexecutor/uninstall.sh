#!/bin/bash

namespace="johank-mlexecutor"
helm uninstall mlexecutor -n ${namespace}
