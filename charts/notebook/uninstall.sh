#!/bin/bash

namespace="notebook"
helm uninstall notebook -n ${namespace}
