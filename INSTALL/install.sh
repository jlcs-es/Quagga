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


sysctl -w net.ipv6.conf.all.autoconf = 0
sysctl -w net.ipv6.conf.all.accept_ra = 0
sysctl -w net.ipv6.conf.all.accept_redirects = 0
sysctl -w net.ipv6.conf.all.forwarding = 1
sysctl -w net.ipv6.conf.all.router_solicitations = 0

echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
echo "Recuerde hacer en cada reinicio:"
echo "   sudo make ipv6forward   "
echo "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
sleep 3

echo export VTYSH_PAGER=more >> /etc/bash.bashrc
