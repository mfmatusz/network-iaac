FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    openvpn \
    easy-rsa \
    iproute2 \
    net-tools \
    iputils-ping

COPY config/ /etc/openvpn/


COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
