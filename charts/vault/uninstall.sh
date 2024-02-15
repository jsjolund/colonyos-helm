#!/bin/bash

namespace="vault"

helm uninstall vault -n ${namespace}
