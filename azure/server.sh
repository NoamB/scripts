#!/bin/bash
echo 9999999 | sudo tee /proc/sys/fs/nr_open
echo 9999999 | sudo tee /proc/sys/fs/file-max

# edit /etc/security/limits.conf, add the following line, need logout and login again
echo "* - nofile 4999999" >> /etc/security/limits.conf

echo 65535 > /proc/sys/net/core/somaxconn

echo "echo 65535 > /proc/sys/net/core/somaxconn" >> /etc/init.d/rc.local

