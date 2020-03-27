#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../cons.sh"


echo -ne "Container logs: \n"
kubectl logs "${POD}" -c "${CNTR_1}"
echo -ne "\n\n"
#echo -ne "Previous Container logs: \n"
#kubectl logs "${POD}" --previous
#echo -ne "\n\n"
