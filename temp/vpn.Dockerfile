FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    openvpn \
    easy-rsa \
    iproute2 \
    net-tools \
    iputils-ping

COPY config/ /etc/openvpn/

CMD ["tail", "-f", "/dev/null"]