#!/bin/bash

ansible-galaxy install -r roles/requirements.yml

echo $ANSIBLE_VAULT_PASSWORD >> .vault

echo $ANSIBLE_VAULT_PASSWORD

printenv

ansible-playbook -i hosts_azure_rm.yml site.yml --vault-password-file .vault

rm .vault
