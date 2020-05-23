FROM resin/rpi-raspbian:stretch

ENV MONITOR_FLAGS=

ENV MONITOR_GIT_REF=

VOLUME ["/config"]

# Cross compile
COPY qemu-arm-static /usr/bin/qemu-arm-static

COPY scripts/ scripts/

COPY run.sh /run.sh

RUN scripts/setup_docker_prereqs

WORKDIR /monitor

CMD ["/run.sh"]
