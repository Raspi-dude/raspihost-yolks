FROM        debian:13.3-slim
LABEL       author="Raspi_dude" maintainer="raspi@raspihost.org"

RUN         apt-get update \
            && apt-get install -y --no-install-recommends \
                ca-certificates tzdata iproute2 curl \
                liblua5.3-0 \
                libncurses6 git \
            && apt-get clean \
            && rm -rf /var/lib/apt/lists/*

RUN         adduser --disabled-password --gecos "" --home /home/container container
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
