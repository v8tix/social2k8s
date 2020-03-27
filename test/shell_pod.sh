#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../cons.sh"

kubectl exec -it "${POD}" -c "${CNTR_1}" -- /bin/bash