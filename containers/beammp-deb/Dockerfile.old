FROM        debian:13.3-slim
LABEL       author="Raspi_dude" maintainer="raspi@raspihost.org"

RUN         apt-get update \
            && apt-get install -y --no-install-recommends \
                ca-certificates tzdata iproute2 curl wget \
                liblua5.3-0 \
                libncurses6 git tini \
            && apt-get clean \
            && rm -rf /var/lib/apt/lists/* \
            && useradd -m -d /home/container -s /bin/bash container

WORKDIR     /home/container
COPY        --chown=container:container ./entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
USER        container
ENV         USER=container HOME=/home/container
ENTRYPOINT  ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
