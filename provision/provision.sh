#!/bin/bash -x

echo 'SELINUX=disabled' > /etc/selinux/config
echo 0 > /selinux/enforce

sudo yum update -y

sudo yum install -y https://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm
sudo yum install -y puppet puppet-server

sudo yum install -y ruby ruby-devel rubygems
sudo yum install -y gcc make #Required to build gems

sudo yum install -y git
sudo yum install -y man

sudo gem install rubygems-update
sudo update_rubygems

sudo gem install r10k
sudo gem install system_timer #Make warning messages go away
