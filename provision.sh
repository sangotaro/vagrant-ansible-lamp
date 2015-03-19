#!/bin/sh

if ! [ `which ansible` ]; then
    yum update -y
    yum install -y ansible
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/playbooks/local.yml
