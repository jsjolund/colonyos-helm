#!/bin/bash

namespace="timescaledb"
helm upgrade timescaledb -f values.yaml -n ${namespace} --wait .
