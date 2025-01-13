#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables-restore < /etc/iptables/rules

ip route del default && ip route add default via 10.2.2.2

tail -f /dev/null