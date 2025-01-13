#!/bin/bash

ip route del default && ip route add default via 10.2.0.3
tail -f /dev/null
