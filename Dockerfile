FROM liuchong/rustup:1.41.1 AS builder
LABEL description="rust and wasm build environment for joystream and substrate"

WORKDIR /setup
COPY setup.sh /setup
ENV TERM=xterm

RUN ./setup.sh