#!/bin/bash

namespace="colonyos"
helm install colonies -f values.yaml -n ${namespace} .
