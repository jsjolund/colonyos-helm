#!/bin/bash

namespace="colonies"
helm install colonies -f values.yaml -n ${namespace} .
