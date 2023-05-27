#!/bin/bash

namespace="colonyos"
kubectl -n ${namespace} create secret generic basic-auth --from-file=registry.password
