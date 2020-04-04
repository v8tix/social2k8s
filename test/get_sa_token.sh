#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../cons.sh"

echo -ne "Token inside container "${CNTR_2}": \n"
kubectl exec "${POD}" -c "${CNTR_2}" -- cat /var/run/secrets/kubernetes.io/serviceaccount/token