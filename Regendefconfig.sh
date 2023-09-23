#!/bin/bash
codename=$1
export ARCH=arm64
target="$codename"_defconfig
make ${target}
make savedefconfig
mv defconfig arch/${ARCH}/configs/${target}
