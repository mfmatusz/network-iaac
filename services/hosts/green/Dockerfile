FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    iproute2 \
    net-tools \
    iputils-ping \
    curl \
    wget \
    netcat \
    traceroute \
    vim


COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
# ENTRYPOINT ["sh", "-c", "ip route del default && ip route add default via 10.3.0.3 && tail -f /dev/null"]
