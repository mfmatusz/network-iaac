#!/bin/bash

ip route del default && ip route add default via 10.3.0.3

tail -f /dev/null