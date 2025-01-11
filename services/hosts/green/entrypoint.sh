#!/bin/bash

ip route del default
# trasa przez firewall międzystrefowy
ip route add default via 10.3.0.3

tail -f /dev/null