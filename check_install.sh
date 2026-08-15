#!/bin/bash

core_services1="dhcp-server"
core_services2="tftp-server"
core_services3="syslinux-tftpboot"
core_services4="httpd"
net_boot="pxelinux"
grub_binary="grubx64.efi"

check_core_services(){
	rpm -q "$core_services1" "$core_services2" "$core_services3" "$core_services4"
}

check_netboot_prereqs(){
	rpm -ql "$core_services3" | grep "$net_boot"
}

check_grub_prereqs(){
	rpm -ql grub2-efi-x64 | grep "$grub_binary"
}

check_core_services
check_netboot_prereqs
check_grub_prereqs


