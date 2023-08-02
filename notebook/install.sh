#!/bin/bash

namespace="notebook"
helm install ${namespace} -f values.yaml -n ${namespace} .
