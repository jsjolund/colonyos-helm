#!/bin/bash

namespace="timescaledb"

helm uninstall timescaledb -n ${namespace}
