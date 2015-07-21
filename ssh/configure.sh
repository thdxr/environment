#!/bin/bash

mkdir /var/run/sshd
mkdir -p /home/dax/.ssh
chmod 700 /home/dax/.ssh
mv /authorized_keys /home/dax/.ssh/
chmod 600 /home/dax/.ssh/*
chown -Rf dax:dax /home/dax/.ssh
/usr/bin/ssh-keygen -A
ls -al /etc/ssh/ssh*key

# configure sshd to block authentication via password
#sed -i.bak 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
#rm /etc/ssh/sshd_config.bak
