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
	tree \
	tcpdump \
	wireshark-cli | tee install_list-txt
