#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../../cons.sh"

FORMAT="yaml"
kubectl get secret "${DOCKER_SEC}" -o "${FORMAT}"