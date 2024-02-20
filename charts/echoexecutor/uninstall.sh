#!/bin/bash

namespace="echo"
helm uninstall echoexecutor -n ${namespace}
