all:
	@echo "Elija opción: r1, r2, r3, r4, restart, ipv6forward"

install:
	sh install.sh

r1: install
	cp R1/daemons /etc/quagga/daemons
	cp R1/ospf6d.conf /etc/quagga/ospf6d.conf
	cp R1/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

r2: install
	cp R2/daemons /etc/quagga/daemons
	cp R2/ripngd.conf /etc/quagga/ripngd.conf
	cp R2/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

r3: install
	cp R3/daemons /etc/quagga/daemons
	cp R3/ospf6d.conf /etc/quagga/ospf6d.conf
	cp R3/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

r4: install
	cp R4/daemons /etc/quagga/daemons
	cp R4/ripngd.conf /etc/quagga/ripngd.conf
	cp R4/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

ipv6forward:
	sysctl -w net.ipv6.conf.all.autoconf=0
	sysctl -w net.ipv6.conf.all.accept_ra=0
	sysctl -w net.ipv6.conf.all.accept_redirects=0
	sysctl -w net.ipv6.conf.all.forwarding=1
	sysctl -w net.ipv6.conf.all.router_solicitations=0
	$(MAKE) restart

restart:
	/etc/init.d/quagga restart


.PHONY: install, r1, r2, r3, r4, restart, ipv6forward
