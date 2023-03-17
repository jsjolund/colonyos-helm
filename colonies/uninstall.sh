#!/bin/bash

namespace="colonies"

helm uninstall colonies -n ${namespace}
