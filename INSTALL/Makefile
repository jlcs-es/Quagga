all:
	@echo "Elija opción: r1, r2, r3 o r4"

install:
	sh install.sh

r1: install
	cp R1/daemons /etc/quagga/daemons
	cp R1/configFiles/ospf6d.conf /etc/quagga/ospf6d.conf
	cp R1/configFiles/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

r2: install
	cp R2/daemons /etc/quagga/daemons
	cp R2/configFiles/ripngd.conf /etc/quagga/ripngd.conf
	cp R2/configFiles/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

r3: install
	cp R3/daemons /etc/quagga/daemons
	cp R3/configFiles/ospf6d.conf /etc/quagga/ospf6d.conf
	cp R3/configFiles/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

r4: install
	cp R4/daemons /etc/quagga/daemons
	cp R4/configFiles/ripngd.conf /etc/quagga/ripngd.conf
	cp R4/configFiles/zebra.conf /etc/quagga/zebra.conf
	$(MAKE) restart

restart:
	/etc/init.d/quagga restart

.PHONY: install, r1, r2, r3, r4
