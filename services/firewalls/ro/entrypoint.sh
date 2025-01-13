#!/bin/bash

ip route del default && ip route add default via 192.168.0.2
ip route add 10.1.0.0/24 via 192.168.0.2

tail -f /dev/null