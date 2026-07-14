Overview: 

Network Boot infrastructure server build using Dell OKWVT8 running RHEL 9.6 to bootstrap other machines across the network.

1) Run required_packages.sh to install the following packages: 
    a) dhcp-server (assigns IPs, tells clients where tftp is)
    b) syslinux-tftpboot (BIOS PXE boot loaders)
    c) grub2-efi-x64 (UEFI PXE boot loader)
    d) shim-x64 (UEFI Secure Boot chain loader)
    e) httpd (Serves install trees and kickstarts)
    f) createrepo_c (creates custom repos)
    g) dracut (build custom initramfs images)
    h) syslinux (menu system for PXE)
    i) tftp-server

2) A few of the above packages do not come in the standard RHEL base repo. Run the enable_repos script to enable the appstream-rpms and crb-rpms so packages: 
    a, b, g, i

3) After running the enable repos script, run the clear_cache script then re-run the required_packages.sh script. The clear_cache script rebuilds the DNF cache to pull the newly enabled package list and install all the required packages. 


