FROM debian:10.8-slim

RUN apt-get update && \
    apt-get install -y binutils-arm-none-eabi gcc-arm-none-eabi \
                       make git python && \
    rm -rf /var/lib/apt/lists/*


VOLUME /src

#USER nobody

WORKDIR /src

RUN groupadd armbuilder && useradd -g armbuilder armbuilder && mkdir /home/armbuilder/ && \
    chown armbuilder:armbuilder /home/armbuilder
USER armbuilder
CMD bash
