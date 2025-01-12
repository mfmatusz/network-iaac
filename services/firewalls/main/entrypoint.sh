#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables-restore < /etc/iptables/rules
#ip route add 10.1.0.0/24 via 10.1.0.3
#ip route add 10.2.0.0/24 via 10.2.0.3
#ip route add 10.3.0.0/24 via 10.3.0.3
#ip route add 10.4.0.0/24 via 10.4.0.3
tail -f /dev/null