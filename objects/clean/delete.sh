#!/bin/bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../cons.sh"

kubectl delete ns "${NAMESPACE}"