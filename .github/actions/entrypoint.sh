#!/bin/bash
set -euo pipefail

# Print info
echo "[INFO] Starting Packer build..."

# Required env check
: "${VCENTER_USER:?VCENTER_USER not set}"
: "${VCENTER_PASSWORD:?VCENTER_PASSWORD not set}"
: "${VCENTER_SERVER:?VCENTER_SERVER not set}"

# Export as Packer vars
export PACKER_VAR_vcenter_user="$VCENTER_USER"
export PACKER_VAR_vcenter_password="$VCENTER_PASSWORD"
export PACKER_VAR_vcenter_server="$VCENTER_SERVER"

# Optional debug
echo "[INFO] Using vCenter: $VCENTER_SERVER"

packer plugins install github.com/hashicorp/vsphere

# Move into packer directory if not already
cd "${PACKER_DIR:-./packer}"
pwd

ls -al ./
ls -al /root/ansible-optimize/packer
ls -al ../

# Validate template
packer fmt -check -diff .
packer validate centos9.json

echo "validated no error"

# Build image
packer build -force centos9.json

echo "[SUCCESS] Packer build complete."

# Now, let's run Terraform to provision the VM
echo "[INFO] Starting Terraform provisioning..."

# Run Terraform init and apply
terraform init
terraform apply -auto-approve

echo "[SUCCESS] Terraform apply complete."
