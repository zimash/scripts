#!/usr/bin/env bash

# TODO: automatically check for docker or podman on host system
RUNNER="docker"

if [ -d linux ]; then
    cd linux && git pull --rebase ; cd ..
else
    git clone https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
fi

if [ -d qemu ]; then
    cd qemu && git pull --rebase ; cd ..
else
    git clone https://gitlab.com/qemu-project/qemu
fi

if [ -d u-boot ]; then
    cd u-boot && git pull --rebase ; cd ..
else
    git clone https://source.denx.de/u-boot/u-boot
fi

docker build . -t linux_qemu_dev
docker run -it --rm \
	-v $(pwd):/sources \
	-u $(id -u ${USER}):$(id -g ${USER}) \
	linux_qemu_dev /bin/bash
