Overview:

Network Boot infrastructure server build running RHEL 9.6 to bootstrap other machines across the network. 

1) run required_packages.sh to install the following packages:
	a) dhcp-server
	b) tftp-server
	c) syslinux 
	d) syslinux-tftpboot
	e) httpd
	f) grub2-efi-x64
	g) shim-x64
	h) dracut
	i) dracut-network
	j) createrepo_c
	k) tree
	l) tcpdump
	m) wireshark-cli

2)run check_install.sh to check if the following core packages are installed
	a) dhcp-server
	b) tftp-server
	c) syslinux-tftpboot
	d) httpd
This script also checks if pxelinux.0 exists, and checks if the GRUB EFI binary location is present.   
