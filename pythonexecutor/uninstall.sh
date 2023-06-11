#!/bin/bash

namespace="python"
helm uninstall pythonexecutor -n ${namespace}
