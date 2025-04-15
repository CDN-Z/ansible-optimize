#!/bin/bash

# $1 = playbook
# $2 = inventory
set -e

#ansible-playbook "$1" -i "$2"
ansible-playbook "$1" -i localhost