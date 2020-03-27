#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../cons.sh"

echo -ne "Secret "${SEC}"\n"
kubectl get secret "${SEC}" -o yaml