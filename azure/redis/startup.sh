#!/bin/bash

echo 65535 > /proc/sys/net/core/somaxconn
echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf
echo never > /sys/kernel/mm/transparent_hugepage/enabled
sysctl vm.overcommit_memory=1

chmod +x /etc/rc.d/rc.local
echo "echo 65535 > /proc/sys/net/core/somaxconn" >> /etc/rc.d/rc.local
echo "echo never > /sys/kernel/mm/transparent_hugepage/enabled" >> /etc/rc.d/rc.local
