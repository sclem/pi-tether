#!/bin/bash

set -e

apt-get install android-tools-adb android-tools-fastboot dnsmasq

echo "
interface eth0
static ip_address=192.168.1.1/24
static domain_name_servers=192.168.1.1
" >> /etc/dhcpcd.conf

echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf

cp tether /etc/network/if-up.d/

chmod 755 /etc/network/if-up.d/tether

echo "success, reboot pi"
