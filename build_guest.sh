#!/bin/bash
BASE_PATH="${HOME}"
SSH_PUB_KEY=${BASE_PATH}/.ssh/id_rsa.pub

sudo virt-builder fedora-38 \
    --format qcow2 --size 15G -o /var/lib/libvirt/images/fedora-38.qcow2 \
    --hostname guest-0 \
    --ssh-inject=root:file:${SSH_PUB_KEY} \
    --selinux-relabel --root-password=password:redhat
