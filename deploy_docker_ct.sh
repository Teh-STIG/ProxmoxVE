#!/bin/bash
# deploy-single.sh - Deploy a single container with full configuration

var_cpu=10 \
var_ram=16384 \
var_disk=100 \
var_unprivileged=1 \
var_brg=vmbr1 \
var_gateway=10.0.0.1 \
var_mtu=1500 \
var_hostname=ossiem \
var_timezone=America/Chicago \
var_pw=SecurePass123 \
var_tags=community-script,docker,cyber-range,ossiem \
var_ssh=yes \
var_fuse=1 \
var_nesting=1 \
var_container_storage=local-lvm \
var_template_storage=local \
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVED/main/ct/docker.sh)"

echo "✓ Container deployed successfully"
