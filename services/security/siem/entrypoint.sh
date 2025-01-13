#!/bin/bash

ip route del default && ip route add default via 10.2.1.2
tail -f /dev/null
