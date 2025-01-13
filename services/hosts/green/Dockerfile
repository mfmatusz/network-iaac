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
