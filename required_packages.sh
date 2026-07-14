#!/bin/bash
sudo dnf install -y \
	dhcp-server \
	tftp-server \
	syslinux \
	syslinux-tftpboot \
	httpd \
	grub2-efi-x64 \
	shim-x64 \
	dracut \
	dracut-network \
	createrepo_c \
	vim \
	tree \
	tcpdump \
	wireshark-cli | tee -a install_list.txt

