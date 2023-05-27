#!/bin/bash

namespace="colonyos"

helm uninstall colonies -n ${namespace}
