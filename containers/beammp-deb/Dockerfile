FROM         --platform=$TARGETOS/$TARGETARCH debian:bookworm-slim
LABEL        author="Raspi_dude" maintainer="raspi@raspihost.org"
ENV          DEBIAN_FRONTEND=noninteractive
ENV          USER=container HOME=/home/container

RUN          apt-get update \
             && apt-get install -y --no-install-recommends \
             git wget curl iproute2 \
             ca-certificates \
             libatomic1 libstdc++6 libssl3 \
             liblua5.3-0 tini \
             && apt-get clean \
             && rm -rf /var/lib/apt/lists/* \
             && useradd -m -d /home/container -s /bin/bash container \
             && ln -s /home/container/ /nonexistent

WORKDIR     /home/container
STOPSIGNAL  SIGINT
COPY        --chown=container:container ./entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT  ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
