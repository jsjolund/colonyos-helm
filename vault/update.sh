#!/bin/bash

namespace="vault"
helm upgrade vault -f values.yaml -n ${namespace} --debug --wait .
