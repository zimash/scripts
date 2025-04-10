#!/usr/bin/env bash

cd /sources/linux && mkdir -p build

case $1 in
	x86_64)
		arch="x86_64"
		compiler=""
		config="defconfig"
		;;
	riscv)
		arch="riscv"
		compiler="riscv64-linux-gnu-"
		config="defconfig"
		;;
	arm64)
		arch="arm64"
		compiler="aarch64-linux-gnu-"
		config="defconfig"
		;;
	*)
		echo "Can not found architecture"
		exit
		;;
esac

make ARCH=$arch CROSS_COMPILE=$compiler O=build $config
make ARCH=$arch CROSS_COMPILE=$compiler O=build -j $(nproc)

cd ../
