#!/bin/bash

namespace="timescaledb"
helm install timescaledb -f values.yaml -n ${namespace} .
