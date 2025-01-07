FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    iproute2 \
    iptables \
    net-tools \
    iputils-ping \
    quagga

COPY config/ /etc/quagga/
RUN chown -R quagga:quagga /etc/quagga

CMD ["tail", "-f", "/dev/null"]