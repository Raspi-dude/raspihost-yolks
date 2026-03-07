FROM        frolvlad/alpine-glibc:alpine-3.22_glibc-2.42

LABEL       author="Raspi_dude" maintainer="raspi@raspihost.org"

RUN         apk add --update --no-cache ca-certificates tzdata iproute2 curl lua5.3 bash ncurses libstdc++ git \
                                && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
