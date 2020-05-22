#!/usr/bin/env bash

mkdir -p /etc/3cxpbx
cp /vagrant/conf/setupconfig.xml /etc/3cxpbx
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | sudo apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
echo "deb http://downloads-global.3cx.com/downloads/debian stretch-testing main" | sudo tee /etc/apt/sources.list.d/3cxpbx-testing.list
apt-get -y update
apt install -y net-tools dphys-swapfile
apt install -y 3cxpbx
#echo 1 | /usr/sbin/3CXWizard --cleanup