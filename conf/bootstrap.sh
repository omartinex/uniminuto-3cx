#!/usr/bin/env bash

mkdir -p /etc/3cxpbx
cp /vagrant/conf/setupconfig.xml /etc/3cxpbx
wget -O- http://downloads.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads.3cx.com/downloads/3cxpbx/ /" | tee /etc/apt/sources.list.d/3cxpbx.list
apt-get -y update
apt-get -y install 3cxpbx
echo 1 | /usr/sbin/3CXWizard --cleanup