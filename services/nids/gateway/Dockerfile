FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    software-properties-common \
    wget \
    && add-apt-repository ppa:oisf/suricata-stable \
    && apt-get update \
    && apt-get install -y \
    suricata \
    iproute2 \
    net-tools \
    iputils-ping \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/suricata/rules

COPY ./config/suricata.yml /etc/suricata/suricata.yaml
COPY ./config/suricata.rules /etc/suricata/rules/suricata.rules

RUN chmod 644 /etc/suricata/suricata.yaml && \
    chmod 644 /etc/suricata/rules/suricata.rules && \
    chown -R root:root /etc/suricata

CMD ["tail", "-f", "/dev/null"]