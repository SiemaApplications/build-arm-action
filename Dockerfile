FROM debian:10.8-slim

RUN apt-get update && \
    apt-get install -y binutils-arm-none-eabi gcc-arm-none-eabi \
                       make git python && \
    rm -rf /var/lib/apt/lists/*


VOLUME /src

WORKDIR /src

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
