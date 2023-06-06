#!/bin/bash

namespace="sleep"
helm uninstall sleepexecutor -n ${namespace}
