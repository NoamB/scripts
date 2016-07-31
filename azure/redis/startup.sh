#!/bin/bash

echo 65535 > /proc/sys/net/core/somaxconn
echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf
echo never > /sys/kernel/mm/transparent_hugepage/enabled
sysctl vm.overcommit_memory=1

echo "echo 65535 > /proc/sys/net/core/somaxconn" >> /etc/init.d/rc.local
echo "echo never > /sys/kernel/mm/transparent_hugepage/enabled" >> /etc/init.d/rc.local

