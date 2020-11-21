#!/bin/bash
ansible-galaxy install -p roles -r requirements.yml
[ -L roles/exphost.docker ] && unlink roles/exphost.docker
[[ ! -L roles/exphost.docker && -d roles/exphost.docker ]] && rm -r roles/exphost.docker
ln -s ../../../ roles/exphost.docker
