#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables-restore < /etc/iptables/rules
ipsec start --conf /etc/ipsec.d/ipsec.conf --debug

ip route del default && ip route add default via 192.168.0.1
ip route add 10.1.0.0/24 via 192.168.0.1

tail -f /dev/null