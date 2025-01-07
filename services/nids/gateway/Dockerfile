FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    suricata \
    iproute2 \
    net-tools \
    iputils-ping

COPY suricata.yaml /etc/suricata/
COPY rules/ /etc/suricata/rules/

CMD ["tail", "-f", "/dev/null"]