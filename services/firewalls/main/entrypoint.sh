#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables-restore < /etc/iptables/rules

# do Security Infrastructure
ip route add 10.2.1.0/24 via 10.2.0.4 dev eth3
ip route add 10.2.2.0/24 via 10.2.0.5 dev eth3

tail -f /dev/null
