#!/bin/bash

### $1 $2 input from github action
ansible-playbook "$1" -i "$2"
