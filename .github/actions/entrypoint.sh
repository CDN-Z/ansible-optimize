#!/bin/bash

# $1 = playbook
# $2 = inventory
set -e

ansible-playbook .github/actions/optimize-sysctl.yml -i localhost
