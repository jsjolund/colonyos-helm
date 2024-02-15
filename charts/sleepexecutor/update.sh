#!/bin/bash

namespace="sleep"
helm upgrade sleepexecutor -f values.yaml -n ${namespace} --wait .
