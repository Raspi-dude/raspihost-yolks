FROM alpine:3.23.3

LABEL author="Raspi_dude" maintainer="raspi@raspihost.org"

RUN apk add --no-cache \
    ca-certificates \
    tzdata \
    iproute2 \
    curl \
    lua5.4 \
    bash \
    tini \
 && adduser -D -h /home/container container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER container
ENV USER=container HOME=/home/container

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/bin/bash", "/entrypoint.sh"]
