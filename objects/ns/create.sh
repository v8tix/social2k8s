#!/usr/bin/env bash

FILE="ns.yaml"
kubectl apply -f "${FILE}"
./switch.sh