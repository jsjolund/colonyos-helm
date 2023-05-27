#!/bin/bash

namespace="colonyos"
helm uninstall registry -n ${namespace}
