#!/bin/bash

namespace="sleep"
helm install sleepexecutor -f values.yaml -n ${namespace} .
