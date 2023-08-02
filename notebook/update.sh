#!/bin/bash

namespace="notebook"
helm upgrade notebook -f values.yaml -n ${namespace} --wait .
