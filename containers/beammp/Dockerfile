FROM        alpine:3.23.3

LABEL       author="Raspi_dude" maintainer="raspi@raspihost.org"

RUN         apk add --update --no-cache ca-certificates tzdata iproute2 curl lua5.4 bash \
                                && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
