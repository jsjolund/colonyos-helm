#!/bin/bash

helm install vault hashicorp/vault -f values.yml -n vault
