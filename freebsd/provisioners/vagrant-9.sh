#!/bin/sh

mkdir -p /usr/home/vagrant/.ssh
curl -o /usr/home/vagrant/.ssh/authorized_keys -L 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub'
chown -R vagrant /usr/home/vagrant/.ssh
chmod -R go-rwsx /usr/home/vagrant/.ssh


echo "UseDNS no" >> /etc/ssh/sshd_config
echo "AllowUsers vagrant" >> /etc/ssh/sshd_config

pkg install -y rsync samba36-smbclient

exit
