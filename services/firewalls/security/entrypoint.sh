#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables-restore < /etc/iptables/rules

ip route del default && ip route add default via 10.2.1.2

# do red (przez main)
ip route add 10.4.0.0/24 via 10.2.0.3 dev eth1
# do DMZ-gateway (przez main)
ip route add 10.1.0.0/24 via 10.2.0.3 dev eth1
# do DMZ#2 (bezposrednio)
ip route add 10.2.2.0/24 via 10.2.0.5 dev eth1
# do green (przez main)
ip route add 10.3.0.0/24 via 10.2.0.3 dev eth1

tail -f /dev/null