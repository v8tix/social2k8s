NAMESPACE="social-ns"
NODE_IP="192.168.100.33"
PORT=30123
DOCKER_SEC="docker-hub-sec"
DOCKER_HUB_USER_NAME="<docker_id>"
DOCKER_HUB_PASSWORD="<docker_password>"
DOCKER_HUB_EMAIL="<docker_email>"
SEC="social-db-conn"
PVC="social-log-pvc"
POD="social-7cc88f8766-6rpzz"
CNTR_1="sidecar"
CNTR_2="social"
CNTR_PORT="8080"
ENDPOINT="http://localhost:"${CNTR_PORT}"/katix/social/api/v1/posts/?page=1&per_page=5"
NODE_ENDPOINT="http://"${NODE_IP}":"${PORT}"/katix/social/api/v1/posts/?page=1&per_page=5"
LOG_FILE="/var/log/social.log"
