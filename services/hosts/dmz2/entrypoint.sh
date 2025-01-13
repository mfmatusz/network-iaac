#!/bin/bash

ip route del default && ip route add default via 10.2.2.2

tail -f /dev/null
