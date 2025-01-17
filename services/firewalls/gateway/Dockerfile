FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    iptables \
    iproute2 \
    net-tools \
    iputils-ping \
    tcpdump \
    nftables \
    systemd \
    strongswan \
    && rm -rf /var/lib/apt/lists/*

COPY config/iptables.rules /etc/iptables/rules
COPY config/ipsec.conf /etc/ipsec.d/ipsec.conf
COPY config/ipsec.secrets /etc/ipsec.secrets
COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]