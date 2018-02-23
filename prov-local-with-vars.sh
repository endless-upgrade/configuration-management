#!/bin/bash
#ansible-playbook -i ./hosts --connection=local $1 -e 'host_key_checking=False'
#ansible-playbook -i '$1,'
# --private-key=/home/xxpasquxx/.ssh/ansible_rsa_key worker.yml
# -e 'ansible_ssh_user=xxpasquxx'
# -e 'host_key_checking=False' 
# --extra-vars "thrift-server=clouder"

ansible-playbook -i ./hosts --connection=local $1 -e 'host_key_checking=False' --extra-vars "thrift-server=$2"

