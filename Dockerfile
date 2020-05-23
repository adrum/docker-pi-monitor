FROM resin/rpi-raspbian:stretch

ENV MONITOR_OPTIONS=

ENV MONITOR_GIT_REF=

VOLUME ["/config"]

WORKDIR /monitor

CMD ["/run.sh"]

# Cross compile
COPY qemu-arm-static /usr/bin/qemu-arm-static

COPY scripts/ scripts/

COPY run.sh /run.sh

RUN scripts/setup_docker_prereqs
