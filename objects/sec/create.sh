#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../cons.sh"

echo -ne "Creating Secret "${SEC}"\n"
kubectl create secret generic "${SEC}" --from-file=app/files