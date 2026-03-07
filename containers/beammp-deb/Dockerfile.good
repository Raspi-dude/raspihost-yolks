FROM         --platform=$TARGETOS/$TARGETARCH debian:bookworm-slim

LABEL        author="Raspi_dude" maintainer="raspi@raspihost.org"

ENV          DEBIAN_FRONTEND=noninteractive

RUN          useradd -m -d /home/container -s /bin/bash container

RUN          ln -s /home/container/ /nonexistent

ENV          USER=container HOME=/home/container

## Install dependencies
RUN          apt-get update && apt-get upgrade -y \
             && apt install -y --no-install-recommends \
             libc6 git wget curl iproute2 \
             ca-certificates tzdata locales \
             libatomic1 libstdc++6 libssl-dev \
             liblua5.3-0 sqlite3 libsqlite3-dev \
             procps tini \
             && apt-get clean \
             && rm -rf /var/lib/apt/lists/*

## Configure locale
RUN          update-locale lang=en_US.UTF-8 \
             && dpkg-reconfigure --frontend noninteractive locales

WORKDIR     /home/container

STOPSIGNAL SIGINT

COPY        --chown=container:container ./entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
