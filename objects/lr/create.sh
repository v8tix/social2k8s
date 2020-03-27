#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../cons.sh"

FILE="lr.yaml"
kubectl apply -f "${FILE}" -n "${NAMESPACE}"