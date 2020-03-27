#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../../cons.sh"

kubectl describe quota social-cpu-and-mem