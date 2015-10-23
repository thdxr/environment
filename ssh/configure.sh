#!/bin/bash

mkdir /var/run/sshd
mkdir -p /home/$1/.ssh
chmod 700 /home/$1/.ssh
mv /authorized_keys /home/$1/.ssh/
chmod 600 /home/$1/.ssh/*
chown -Rf $1:$1 /home/$1/.ssh
/usr/bin/ssh-keygen -A
ls -al /etc/ssh/ssh*key

# configure sshd to block authentication via password
#sed -i.bak 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
#rm /etc/ssh/sshd_config.bak
