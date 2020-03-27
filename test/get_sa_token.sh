#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../cons.sh"

echo -ne "Token inside container "${CNTR_1}": \n"
kubectl exec "${POD}" -c "${CNTR_1}" -- cat /var/run/secrets/kubernetes.io/serviceaccount/token