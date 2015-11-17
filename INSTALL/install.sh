#!/bin/bash
apt-get -y install quagga


touch /etc/quagga/zebra.conf
touch /etc/quagga/bgpd.conf
touch /etc/quagga/ospf6d.conf
touch /etc/quagga/ripngd.conf
touch /etc/quagga/vtysh.conf

chown quagga.quaggavty /etc/quagga/*.conf
chmod 640 /etc/quagga/*.conf

echo 'password manyhue' > /etc/quagga/zebra.conf
echo 'password manyhue' > /etc/quagga/bgpd.conf
echo 'password manyhue' > /etc/quagga/ospf6d.conf
echo 'password manyhue' > /etc/quagga/ripngd.conf
echo 'username root nopassword' > /etc/quagga/vtysh.conf


echo export VTYSH_PAGER=more >> /etc/bash.bashrc
