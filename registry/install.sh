#!/bin/bash

namespace="colonyos"
helm install registry -f values.yaml -n ${namespace} .
