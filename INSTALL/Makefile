all:
	echo "Elija opción: r1, r2, r3 o r4"

install:
	sh install.sh

r1: install
	cp R1/daemons /etc/quagga/daemons

r2: install
	cp R2/daemons /etc/quagga/daemons

r3: install
	cp R3/daemons /etc/quagga/daemons

r4: install
	cp R4/daemons /etc/quagga/daemons

restart:
	/etc/init.d/quagga restart

.PHONY: install, r1, r2, r3, r4
