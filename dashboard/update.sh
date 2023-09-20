#!/bin/bash

namespace="dashboard"
helm upgrade dashbaord -f values.yaml -n ${namespace} --debug --wait .
