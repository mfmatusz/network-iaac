#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables-restore < /etc/iptables/rules
ip route del default && ip route add default via 10.4.0.2
ip route add 10.2.0.0/24 via 10.4.0.3 dev eth0
ip route add 10.3.0.0/24 via 10.4.0.3 dev eth0
tail -f /dev/null
