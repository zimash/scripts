FROM debian:12.10

RUN apt update && \
    apt install -y \
    build-essential gdb pkg-config bc bison file flex libglib2.0-dev libssl-dev \
    ninja-build python3 python3-venv python3-msmb-theme \
    device-tree-compiler \
    gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu \
    gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu \
    gcc-arm-linux-gnueabi binutils-arm-linux-gnueabi \
    gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf
