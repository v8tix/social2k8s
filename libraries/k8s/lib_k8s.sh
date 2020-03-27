dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../zemni/lib/dye4b/dye4b.sh"

BASH_BACKGROUND="$(bgc -c black)"
BASH_FOREGROUND="$(fg_ce -c white -e normal)"

#######################################
# List the Kubernetes cluster nodes IP addresses.
# Globals:
#   BASH_BACKGROUND
#   BASH_FOREGROUND
#   NO_ERRORS_CODE
# Arguments:
#   None
# Returns:
#   NO_ERRORS_CODE
#######################################
get_ips() {
ips="$(kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")].address}')"
info \
  -o "get_ips" \
  -d "${ips}" \
  -dfg "${BASH_FOREGROUND}" \
  -dbg "${BASH_BACKGROUND}"
return ${NO_ERRORS_CODE}
}

#######################################
# switch to a different Kubernetes context.
# Globals:
#   BASH_BACKGROUND
#   BASH_FOREGROUND
#   INVALID_NUMBER_PARAMETERS
#   INVALID_NUMBER_PARAMETERS_CODE
#   LOG_ERROR
#   LOG_WARNING
#   NO_ERRORS_CODE
#   UNKNOWN_FUNCTION_OPTION
#   UNKNOWN_FUNCTION_OPTION_CODE
# Arguments:
#    -c          <context>
# Returns:
#   INVALID_NUMBER_PARAMETERS_CODE
#   NO_ERRORS_CODE
#   UNKNOWN_FUNCTION_OPTION_CODE
#######################################
set_context() {
  if [[ $# -eq 2 ]]; then
    while (( "$#" )); do
      case "${1}" in
        -c)
          shift
          kubernetes_context="${1}"
          ;;
        *)
          usage_set_context \
            LOG_ERROR \
            "set_context" \
            "${UNKNOWN_FUNCTION_OPTION_CODE}" \
            "${UNKNOWN_FUNCTION_OPTION}"
          usage_set_context \
            LOG_WARNING
          return ${UNKNOWN_FUNCTION_OPTION_CODE}
          ;;
      esac

      shift

    done

    msg="$(kubectl config set-context $(kubectl config current-context) --namespace "${kubernetes_context}")"
    info \
      -o "set_context" \
      -d "${msg}" \
      -dfg "${BASH_FOREGROUND}" \
      -dbg "${BASH_BACKGROUND}"
    return ${NO_ERRORS_CODE}

  else

    usage_set_context \
      LOG_ERROR \
      "set_context" \
      "${INVALID_NUMBER_PARAMETERS_CODE}" \
      "${INVALID_NUMBER_PARAMETERS}"
    return ${INVALID_NUMBER_PARAMETERS_CODE}

  fi
}

usage_set_context() {
read -r -d '' temp_set_context<<"EOF"
Usage: set_context -<OPTIONS>\n
  OPTIONS       PARAMS                  DESCRIPTION\n
    -c          <context>             The Kubernetes context.\n
EOF

if [[ "${1}" -eq 1 ]]; then
  error \
    -o "${2}" \
    -d "$(err "${3}" "${4}")" \
    -dfg "${BASH_FOREGROUND}" \
    -dbg "${BASH_BACKGROUND}"
else
  warn \
    -o "set_context" \
    -d "${temp_set_context}" \
    -dfg "${BASH_FOREGROUND}" \
    -dbg "${BASH_BACKGROUND}"
fi
}
