FROM        debian:13.3-slim

LABEL       author="Raspi_dude" maintainer="raspi@raspihost.org"

RUN         apt update && apt upgrade -y && apt install -y ca-certificates tzdata iproute2 curl liblua5.3-0 libncurses6 git sqlite3 \
                                && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
