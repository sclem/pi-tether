#!/bin/bash

(
cat <<EOF
net.bridge.bridge-nf-call-arptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
) | sudo tee -a /etc/sysctl.conf

cp interfaces /etc/network/interfaces

cp tether /usr/local/bin/

cp tether.service /etc/systemd/system/

sudo systemctl enable tether.service
