#!/usr/bin/env bash

kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")].address}'
echo -ne "\n"