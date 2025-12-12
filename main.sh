#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i inventory.ini roles/playbookLDAP.yml -b
ansible-playbook -i inventory.ini roles/playbookDNS.yml -b
ansible-playbook -i inventory.ini roles/playbookBD.yml -b
ansible-playbook -i inventory.ini roles/playbookCorreo.yml -b
ansible-playbook -i inventory.ini roles/playbookWeb.yml -b

