#!/bin/bash
sudo virt-install \
  --connect qemu:///system \
  --console pty,target_type=serial \
  --name fedora-38-0 \
  --cpu host \
  --graphics none \
  --ram 2048 \
  --disk bus=virtio,path=/var/lib/libvirt/images/fedora-38.qcow2 \
  --vcpus 4 \
  --os-variant fedora38 \
  --network network=default,model=virtio \
  --noautoconsole \
  --noreboot \
  --import
