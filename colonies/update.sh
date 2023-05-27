#!/bin/bash

namespace="colonyos"
helm upgrade colonies -f values.yaml -n ${namespace} --wait .
