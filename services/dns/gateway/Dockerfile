FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    bind9 \
    iproute2 \
    net-tools \
    iputils-ping

COPY named.conf /etc/bind/
COPY zones/ /etc/bind/zones/

CMD ["tail", "-f", "/dev/null"]