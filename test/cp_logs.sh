#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../cons.sh"

OUTPUT_DIR=~/Downloads/
kubectl cp "${POD}":/var/log/social.log "${OUTPUT_DIR}"/social.log
