#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../../../cons.sh"

kubectl create secret docker-registry "${DOCKER_SEC}" \
  --docker-username="${DOCKER_HUB_USER_NAME}" \
  --docker-password="${DOCKER_HUB_PASSWORD}" \
  --docker-email="${DOCKER_HUB_EMAIL}"