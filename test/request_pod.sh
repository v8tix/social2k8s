#!/bin/bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../cons.sh"

echo -ne "Pod request \n"
kubectl exec "${POD}" -c "${CNTR_1}" -- curl -k -v --location --request GET "${ENDPOINT}"
echo -ne "\n"