#!/bin/bash
result=0
trap 'result=1' ERR
yamllint roles/exphost.docker/
ansible-lint dummy_playbook.yml
exit $result

