FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    iptables \
    iproute2 \
    net-tools \
    iputils-ping \
    tcpdump \
    nftables \
    strongswan \
    && rm -rf /var/lib/apt/lists/*

COPY config/iptables.rules /etc/iptables/rules
COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]