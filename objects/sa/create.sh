#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../cons.sh"

FILE="sa.yaml"
kubectl apply -f "${FILE}" -n "${NAMESPACE}"