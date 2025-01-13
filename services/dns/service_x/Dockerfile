FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    bind9 \
    iproute2 \
    net-tools \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/*

COPY config/ /etc/bind/
RUN chown -R bind:bind /etc/bind

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
