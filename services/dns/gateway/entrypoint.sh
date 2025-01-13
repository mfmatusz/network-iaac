#!/bin/bash

ip route del default && ip route add default via 10.1.0.2
tail -f /dev/null
