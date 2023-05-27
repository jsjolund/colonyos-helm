#!/bin/bash

namespace="colonyos"
helm upgrade registry -f values.yaml -n ${namespace} --wait .
