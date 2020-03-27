#!/usr/bin/env bash

echo -ne "Pods resource usage in all namespaces\n"
kubectl top pod --all-namespaces
echo -ne "\n\n"
echo -ne "Pods resource usage in actual namespaces\n"
kubectl top pod
echo -ne "\n\n"
echo -ne "Containers resource usage in actual namespaces\n"
kubectl top pod --containers