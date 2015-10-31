#!/bin/bash
apt-get -y install quagga

cat > /etc/quagga/daemons << EOF
zebra=yes
bgpd=no
ospfd=no
ospf6d=yes
ripd=no
ripngd=no
isisd=no
babeld=no

EOF


touch /etc/quagga/zebra.conf
touch /etc/quagga/ospf6d.conf
touch /etc/quagga/vtysh.conf

chown quagga.quaggavty /etc/quagga/*.conf
chmod 640 /etc/quagga/*.conf

echo 'password manyhue' > /etc/quagga/zebra.conf
echo 'password manyhue' > /etc/quagga/ospf6d.conf
echo 'username root nopassword' > /etc/quagga/vtysh.conf


echo export VTYSH_PAGER=more >> /etc/bash.bashrc
