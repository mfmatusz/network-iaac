FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    iproute2 \
    net-tools \
    iputils-ping \
    rsyslog \
    auditd

COPY config/ /etc/

CMD ["tail", "-f", "/dev/null"]